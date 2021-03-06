
//Set the sampler starts. Note that 'padd' get calculated before _any_ 'add'
@set( texUnit, 1 )

@property( hlms_forwardplus )
	@add( texUnit, 2 )
@end

@property( irradiance_volumes )
	@set( irradianceVolumeTexUnit, texUnit )
	@add( texUnit, 1 )
@end

@set( textureRegShadowMapStart, texUnit )
@add( texUnit, hlms_num_shadow_maps )

@property( parallax_correct_cubemaps )
	@set( globaPccTexUnit, texUnit )
	@add( texUnit, 1 )
@end

@set( textureRegStart, texUnit )
@set( samplerStateStart, texUnit )
@set( numSamplerStates, num_textures )
@add( texUnit, num_textures )

@set( envMapReg, texUnit )

@property( (envprobe_map && envprobe_map != target_envprobe_map) || parallax_correct_cubemaps )
	@set( use_envprobe_map, 1 )

	@property( !envprobe_map || envprobe_map == target_envprobe_map )
		/// "No cubemap"? Then we're in auto mode or...
		/// We're rendering to the cubemap probe we're using as manual. Use the auto mode as fallback.
		@piece( pccProbeSource )pass.autoProbe@end
		@set( use_parallax_correct_cubemaps, 1 )
		/// Auto cubemap textures are set at the beginning. Manual cubemaps are the end.
		@set( envMapReg, globaPccTexUnit )
	@end
	@property( envprobe_map && envprobe_map != target_envprobe_map && use_parallax_correct_cubemaps )
		@piece( pccProbeSource )manualProbe@end
	@end
@end

@property( diffuse_map )
	@property( !hlms_shadowcaster )
		@piece( SampleDiffuseMap )	diffuseCol = textureMaps@value( diffuse_map_idx ).sample( samplerStates@value(diffuse_map_idx), inPs.uv@value(uv_diffuse).xy, diffuseIdx );
@property( !hw_gamma_read )	diffuseCol = diffuseCol * diffuseCol;@end @end
	@end @property( hlms_shadowcaster )
		@piece( SampleDiffuseMap )	diffuseCol = textureMaps@value( diffuse_map_idx ).sample( samplerStates@value(diffuse_map_idx), inPs.uv@value(uv_diffuse).xy, diffuseIdx ).w;@end
	@end
@end

@property( transparent_mode )
	@piece( diffuseExtraParamDef ), float4 diffuseCol@end
	@piece( diffuseExtraParam ), diffuseCol.xyzw@end
@end @property( !transparent_mode )
	@piece( diffuseExtraParamDef ), float3 diffuseCol@end
	@piece( diffuseExtraParam ), diffuseCol.xyz@end
@end
//diffuseCol always has some colour and is multiplied against material.kD in PixelShader_ps.
@piece( kD )diffuseCol@end

@property( !metallic_workflow )
	@property( specular_map && !fresnel_workflow )
		@piece( SampleSpecularMap )	specularCol = textureMaps@value( specular_map_idx ).sample( samplerStates@value(specular_map_idx), inPs.uv@value(uv_specular).xy, specularIdx ).xyz * material.kS.xyz;@end
		@piece( specularExtraParamDef ), float3 specularCol@end
		@piece( specularExtraParam ), specularCol.xyz@end
		@piece( kS )specularCol@end
	@end
	@property( specular_map && fresnel_workflow )
		@piece( SampleSpecularMap )	F0 = textureMaps@value( specular_map_idx ).sample( samplerStates@value(specular_map_idx), inPs.uv@value(uv_specular).xy, specularIdx ).@insertpiece( FresnelSwizzle ) * material.F0.@insertpiece( FresnelSwizzle );@end
		@piece( specularExtraParamDef ), @insertpiece( FresnelType ) F0@end
		@piece( specularExtraParam ), F0@end
	@end
	@property( !specular_map || fresnel_workflow )
		@piece( kS )material.kS@end
	@end
@end @property( metallic_workflow )
@piece( SampleSpecularMap )
	@property( specular_map )
		float metalness = textureMaps@value( specular_map_idx ).sample( samplerStates@value(specular_map_idx), inPs.uv@value(uv_specular).xy, specularIdx ).x * material.F0.x;
		F0 = mix( 0.03f, @insertpiece( kD ).xyz * 3.14159f, metalness );
		@insertpiece( kD ).xyz = @insertpiece( kD ).xyz - @insertpiece( kD ).xyz * metalness;
	@end @property( !specular_map )
		F0 = mix( 0.03f, @insertpiece( kD ).xyz * 3.14159f, material.F0.x );
		@insertpiece( kD ).xyz = @insertpiece( kD ).xyz - @insertpiece( kD ).xyz * material.F0.x;
	@end
	@property( hlms_alphablend )F0 *= material.F0.w;@end
	@property( transparent_mode )F0 *= diffuseCol.w;@end
@end /// SampleSpecularMap

	@piece( kS )material.kS.xyz@end
	@piece( metallicExtraParamDef ), float3 F0@end
	@piece( metallicExtraParam ), F0@end
@end

@property( roughness_map )
	@piece( SampleRoughnessMap )	ROUGHNESS = material.kS.w * textureMaps@value( roughness_map_idx ).sample( samplerStates@value( roughness_map_idx ), inPs.uv@value(uv_roughness).xy, roughnessIdx ).x;
	ROUGHNESS = max( ROUGHNESS, 0.001f );@end
	@piece( roughnessExtraParamDef ), float ROUGHNESS@end
	@piece( roughnessExtraParam ), ROUGHNESS@end
@end

@piece( brdfExtraParamDefs )@insertpiece( diffuseExtraParamDef )@insertpiece( specularExtraParamDef )@insertpiece( roughnessExtraParamDef )@insertpiece( metallicExtraParamDef )@end
@piece( brdfExtraParams )@insertpiece( diffuseExtraParam )@insertpiece( specularExtraParam )@insertpiece( roughnessExtraParam )@insertpiece( metallicExtraParam )@end

@foreach( detail_maps_normal, n )
	@piece( SampleDetailMapNm@n )getTSNormal( samplerStates@value(detail_map_nm@n_idx), textureMaps@value(detail_map_nm@n_idx), inPs.uv@value(uv_detail_nm@n).xy@insertpiece( offsetDetailN@n ), detailNormMapIdx@n ) * detailWeights.@insertpiece(detail_swizzle@n) @insertpiece( detail@n_nm_weight_mul )@end
@end

@property( detail_weight_map )
	@piece( SamplerDetailWeightMap )textureMaps@value(detail_weight_map_idx).sample( samplerStates@value(detail_weight_map_idx), inPs.uv@value(uv_detail_weight).xy, weightMapIdx )@end
@end

@property( envmap_scale )
	@piece( ApplyEnvMapScale )* pass.ambientUpperHemi.w@end
@end

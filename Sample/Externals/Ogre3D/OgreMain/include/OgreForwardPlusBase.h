/*
-----------------------------------------------------------------------------
This source file is part of OGRE
    (Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/

Copyright (c) 2000-2017 Torus Knot Software Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-----------------------------------------------------------------------------
*/
#ifndef _OgreForwardPlusBase_H_
#define _OgreForwardPlusBase_H_

#include "OgrePrerequisites.h"
#include "OgreCommon.h"
#include "OgreLight.h"
#include "OgreHeaderPrefix.h"

namespace Ogre
{
    /** \addtogroup Core
    *  @{
    */
    /** \addtogroup Resources
    *  @{
    */

    class CompositorShadowNode;

    /** ForwardPlusBase */
    class _OgreExport ForwardPlusBase : public HlmsAlloc
    {
    public:
        enum ForwardPlusMethods
        {
            MethodForward3D,
            MethodForwardClustered,
            NumForwardPlusMethods
        };

    protected:
        static const size_t NumBytesPerLight;

        struct CachedGrid
        {
            Camera                  *camera;
            /// Cameras used for reflection have a different view proj matrix
            bool                    reflection;
            /// Cameras can change their AR depending on the RTT they're rendering to.
            Real                    aspectRatio;
            /// Cameras w/out shadows have a different light list from cameras that do.
            CompositorShadowNode const *shadowNode;
            /// Last frame this cache was updated.
            uint32                  lastFrame;

            TexBufferPacked         *gridBuffer;
            TexBufferPacked         *globalLightListBuffer;
        };

        struct LightCount
        {
            //We use LT_DIRECTIONAL (index = 0) to contain the total light count.
            uint32  lightCount[Light::NUM_LIGHT_TYPES];
            LightCount() { memset( lightCount, 0, sizeof(lightCount) ); }
        };

        typedef vector<CachedGrid>::type CachedGridVec;
        CachedGridVec   mCachedGrid;
        LightArray      mCurrentLightList;

        FastArray<LightCount>   mLightCountInCell;

        VaoManager      *mVaoManager;
        SceneManager    *mSceneManager;

        bool    mDebugMode;
        bool    mFadeAttenuationRange;
        /// VPLs = Virtual Point Lights. Used by InstantRadiosity.
        bool    mEnableVpls;

        void fillGlobalLightListBuffer( Camera *camera, TexBufferPacked *globalLightListBuffer );

        /** Finds a grid already cached in mCachedGrid that can be used for the given camera.
            If the cache does not exist, we create a new entry.
        @param camera
            The camera for which we'll find a cached entry.
        @param outCachedGrid
            The CachedGrid being retrieved. May be new or an existing one.
            This pointer may be invalidated on the next call to getCachedGridFor
        @return
            True if the cache is up to date. False if the cache needs to be updated.
        */
        bool getCachedGridFor( Camera *camera, CachedGrid **outCachedGrid );

        /// The const version will not create a new cache if not found, and
        /// output a null pointer instead (also returns false in that case).
        bool getCachedGridFor( Camera *camera, const CachedGrid **outCachedGrid ) const;

    public:
        ForwardPlusBase( SceneManager *sceneManager );
        virtual ~ForwardPlusBase();

        virtual ForwardPlusMethods getForwardPlusMethod(void) const = 0;

        void _changeRenderSystem( RenderSystem *newRs );

        virtual void collectLights( Camera *camera ) = 0;

        /// Cache the return value as internally we perform an O(N) search
        TexBufferPacked* getGridBuffer( Camera *camera ) const;
        /// Cache the return value as internally we perform an O(N) search
        TexBufferPacked* getGlobalLightListBuffer( Camera *camera ) const;

        /// Returns the amount of bytes that fillConstBufferData is going to fill.
        virtual size_t getConstBufferSize(void) const = 0;

        /** Fills 'passBufferPtr' with the necessary data for ForwardPlusBase rendering.
            @see getConstBufferSize
        @remarks
            Assumes 'passBufferPtr' is aligned to a vec4/float4 boundary.
        */
        virtual void fillConstBufferData( RenderTarget *renderTarget,
                                          float * RESTRICT_ALIAS passBufferPtr ) const = 0;

        virtual void setHlmsPassProperties( Hlms *hlms );

        /// Turns on visualization of light cell occupancy
        void setDebugMode( bool debugMode )                             { mDebugMode = debugMode; }
        bool getDebugMode(void) const                                   { return mDebugMode; }

        /// Attenuates the light by the attenuation range, causing smooth endings when
        /// at the end of the light range instead of a sudden sharp termination. This
        /// isn't physically based (light's range is infinite), but looks very well,
        /// and makes more intuitive to manipulate a light by controlling its range
        /// instead of controlling its radius. @see Light::setAttenuationBasedOnRadius
        /// and @see setAttenuation.
        /// And even when controlling the light by its radius, you don't have to worry
        /// so much about the threshold's value being accurate.
        /// It has a tendency to make lights dimmer though. That's the price to pay
        /// for this optimization and having more intuitive controls.
        /// Enabled by default.
        ///
        /// In math:
        ///     atten *= max( (attenRange - fDistance) / attenRange, 0.0f );
        void setFadeAttenuationRange( bool fade )                       { mFadeAttenuationRange = fade; }
        bool getFadeAttenuationRange(void) const                        { return mFadeAttenuationRange; }

        void setEnableVpls( bool enable )                               { mEnableVpls = enable; }
        bool getEnableVpls(void) const                                  { return mEnableVpls; }
    };

    /** @} */
    /** @} */

}

#include "OgreHeaderSuffix.h"

#endif

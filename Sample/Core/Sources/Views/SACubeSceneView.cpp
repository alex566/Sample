//
//  SACubeSceneView.cpp
//  Sample
//
//  Created by Alexey on 23.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#include "SACubeSceneView.hpp"

// Ogre
#import <OgreSceneManager.h>

namespace SA {

#pragma mark - Constants

    const size_t GridSize = 15;
    const float GridStep = 1.0f / GridSize;

#pragma mark - Lifecycle

    CubeSceneView::CubeSceneView(Ogre::SceneManager *sceneManager) {
        auto manualObject = sceneManager->createManualObject();

        manualObject->begin("BaseWhite", Ogre::OT_LINE_LIST);

        // Back
        manualObject->position(0.0f, 0.0f, 0.0f);
        manualObject->position(0.0f, 1.0f, 0.0f);
        manualObject->line(0, 1);

        manualObject->position(0.0f, 1.0f, 0.0f);
        manualObject->position(1.0f, 1.0f, 0.0f);
        manualObject->line(2, 3);

        manualObject->position(1.0f, 1.0f, 0.0f);
        manualObject->position(1.0f, 0.0f, 0.0f);
        manualObject->line(4, 5);

        manualObject->position(1.0f, 0.0f, 0.0f);
        manualObject->position(0.0f, 0.0f, 0.0f);
        manualObject->line(6, 7);

        // Front
        manualObject->position(0.0f, 0.0f, 1.0f);
        manualObject->position(0.0f, 1.0f, 1.0f);
        manualObject->line(8, 9);

        manualObject->position(0.0f, 1.0f, 1.0f);
        manualObject->position(1.0f, 1.0f, 1.0f);
        manualObject->line(10, 11);

        manualObject->position(1.0f, 1.0f, 1.0f);
        manualObject->position(1.0f, 0.0f, 1.0f);
        manualObject->line(12, 13);

        manualObject->position(1.0f, 0.0f, 1.0f);
        manualObject->position(0.0f, 0.0f, 1.0f);
        manualObject->line(14, 15);

        // Sides
        manualObject->position(0.0f, 0.0f, 0.0f);
        manualObject->position(0.0f, 0.0f, 1.0f);
        manualObject->line(16, 17);

        manualObject->position(0.0f, 1.0f, 0.0f);
        manualObject->position(0.0f, 1.0f, 1.0f);
        manualObject->line(18, 19);

        manualObject->position(1.0f, 0.0f, 0.0f);
        manualObject->position(1.0f, 0.0f, 1.0f);
        manualObject->line(20, 21);

        manualObject->position(1.0f, 1.0f, 0.0f);
        manualObject->position(1.0f, 1.0f, 1.0f);
        manualObject->line(22, 23);

        manualObject->end();

        Ogre::SceneNode *sceneNodeLines = sceneManager->getRootSceneNode(Ogre::SCENE_DYNAMIC)->
        createChildSceneNode(Ogre::SCENE_DYNAMIC);
        sceneNodeLines->attachObject(manualObject);
        sceneNodeLines->scale(4.0f, 4.0f, 4.0f);
        sceneNodeLines->translate(-4.5f, -1.5f, 0.0f, Ogre::SceneNode::TS_LOCAL);

        for (size_t i = 0; i < GridSize; i++) {
            for (size_t j = 0; j < GridSize; j++) {
                _vertices.push_back(Ogre::Vector3(GridStep * i, GridStep * j, 0.0f));
                _vertices.push_back(Ogre::Vector3(GridStep * (i + 1), GridStep * j, 0.0f));
                _vertices.push_back(Ogre::Vector3(GridStep * i, GridStep * (j + 1), 0.0f));
                _vertices.push_back(Ogre::Vector3(GridStep * (i + 1), GridStep * (j + 1), 0.0f));
            }
        }

        _manualObject = sceneManager->createManualObject();

        _manualObject->begin("Rocks", Ogre::OT_TRIANGLE_LIST);

        fillBuffer(0.0f);

        _manualObject->end();

        Ogre::SceneNode *sceneNodeGrid = sceneManager->getRootSceneNode(Ogre::SCENE_DYNAMIC)->
        createChildSceneNode(Ogre::SCENE_DYNAMIC);
        sceneNodeGrid->attachObject(_manualObject);
        sceneNodeGrid->scale(4.0f, 4.0f, 4.0f);
        sceneNodeGrid->translate(1.5f, -1.5f, 0.0f, Ogre::SceneNode::TS_LOCAL);

        Ogre::Light *light = sceneManager->createLight();
        Ogre::SceneNode *lightNode = sceneManager->getRootSceneNode()->createChildSceneNode();
        lightNode->attachObject(light);
        light->setPowerScale(Ogre::Math::PI); //Since we don't do HDR, counter the PBS' division by PI
        light->setType(Ogre::Light::LT_DIRECTIONAL);
        light->setDirection(Ogre::Vector3(-1, -1, -1).normalisedCopy());
    }

    CubeSceneView::~CubeSceneView() {
        if (_manualObject) {
            delete _manualObject;
        }
    }

#pragma mark - Private

    void CubeSceneView::fillBuffer(float uvOffset) {
        for (Ogre::uint32 i = 0; i < _vertices.size();) {
            _manualObject->position(_vertices[i]);
            _manualObject->normal(0.0f, 1.0f, 0.0f);
            _manualObject->tangent(1.0f, 0.0f, 0.0f);
            _manualObject->textureCoord(0.0f + uvOffset, 0.0f + uvOffset);

            _manualObject->position(_vertices[i + 1]);
            _manualObject->normal(0.0f, 1.0f, 0.0f);
            _manualObject->tangent(1.0f, 0.0f, 0.0f);
            _manualObject->textureCoord(1.0f + uvOffset, 0.0f + uvOffset);

            _manualObject->position(_vertices[i + 2]);
            _manualObject->normal(0.0f, 1.0f, 0.0f);
            _manualObject->tangent(1.0f, 0.0f, 0.0f);
            _manualObject->textureCoord(0.0f + uvOffset, 1.0f + uvOffset);

            _manualObject->position(_vertices[i + 3]);
            _manualObject->normal(0.0f, 1.0f, 0.0f);
            _manualObject->tangent(1.0f, 0.0f, 0.0f);
            _manualObject->textureCoord(1.0f + uvOffset, 1.0f + uvOffset);

            _manualObject->quad(i, i + 1, i + 3, i + 2);
            
            i += 4;
        }
    }
}

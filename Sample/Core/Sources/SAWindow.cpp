//
//  SAWindow.cpp
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#include "SAWindow.hpp"

// Ogre
#include <Ogre.h>
#include <Compositor/OgreCompositorManager2.h>
#include <OgreMeshManager2.h>
#include <OgreItem.h>

// Helpers
#include "SAFileSystemHelper.h"

// View
#include "SACubeSceneView.hpp"

// Plugins
#include <OgreMetalPlugin.h>
#include <OgreParticleFXPlugin.h>

// Components
#include <OgreHlmsUnlit.h>
#include <OgreHlmsPbs.h>

namespace SA {

#pragma mark - Constants

    namespace MaterialsPaths {

        constexpr static char MaterialsPath[] = "/Materials";
        constexpr static char CommonPath[] = "/Common";
        constexpr static char AnyPath[] = "/Any";
        constexpr static char UnlitPath[] = "/Unlit";
        constexpr static char PbsPath[] = "/Pbs";
        
    }

#pragma mark - Lifecycle

    Window::Window() {
        _root = new Ogre::Root("");

        auto renderer = new Ogre::MetalPlugin();
        _root->installPlugin(renderer);

        auto particleFX = new Ogre::ParticleFXPlugin();
        _root->installPlugin(particleFX);

        const auto renderSystemList = _root->getAvailableRenderers();

        if (renderSystemList.size() == 0) {
            throw Ogre::Exception(Ogre::Exception::ERR_RENDERINGAPI_ERROR, "Sorry, no rendersystem was found.", __FILE__);
        }

        _root->setRenderSystem(renderSystemList.front());
        _root->initialise(false);
    }

    Window::~Window() {
        if (_root) {
            delete _root;
        }

        if (_cubeView) {
            delete _cubeView;
        }
    }

#pragma mark - Public

    void Window::renderOneFrame() {
        _root->renderOneFrame();
    }

    void Window::setupWindow(float width, float height) {
        _renderWindow = _root->createRenderWindow("Sample", width, height, true);

        setupHLSL();
        setupScene();
    }

    void * const Window::getAttribute(const char *name) {
        void *ptr;
        _renderWindow->getCustomAttribute(name, &ptr);
        return ptr;
    }

#pragma mark - Private

    void Window::setupScene() {
        const size_t numThreads = std::max<size_t>(1, Ogre::PlatformInformation::getNumLogicalCores());

        auto sceneManager = _root->createSceneManager(Ogre::ST_GENERIC, numThreads, Ogre::INSTANCING_CULLING_THREADED);
        sceneManager->setAmbientLight(Ogre::ColourValue(0.5, 0.5, 0.5),
                                      Ogre::ColourValue(0.6, 0.6, 0.6),
                                      Ogre::Vector3(1.0));

        auto camera = sceneManager->createCamera("PlayerCam");
        camera->setPosition(100, 100, 0);
        camera->lookAt(0, 0, 0);
        camera->setNearClipDistance(5);

        auto compositorManager = _root->getCompositorManager2();
        const Ogre::String workspaceName = "Main workspace";

        compositorManager->createBasicWorkspaceDef(workspaceName, Ogre::ColourValue(0.2, 0.2, 0.2, 1.0));
        compositorManager->addWorkspace(sceneManager, _renderWindow, camera, workspaceName, true);

        _cubeView = new CubeSceneView(sceneManager);
    }

    void Window::setupHLSL() {
        const auto rootPath = SA::FileSystemHelper::ResourcesFolderPath();
        const auto materialsPath = rootPath + MaterialsPaths::MaterialsPath;
        
        const auto commonPath = materialsPath + MaterialsPaths::CommonPath;
        const auto anyPath = materialsPath + MaterialsPaths::AnyPath;
        const auto unlitPath = materialsPath + MaterialsPaths::UnlitPath;
        const auto pbsPath = materialsPath + MaterialsPaths::PbsPath;

        auto archiveLibrary = Ogre::ArchiveManager::getSingletonPtr()->load(commonPath, "FileSystem", true);
        auto archiveLibraryAny = Ogre::ArchiveManager::getSingletonPtr()->load(anyPath, "FileSystem", true);

        Ogre::ArchiveVec library = { archiveLibrary, archiveLibraryAny };

        auto archiveUnlit = Ogre::ArchiveManager::getSingletonPtr()->load(unlitPath, "FileSystem", true);
        auto hlmsUnlit = new Ogre::HlmsUnlit(archiveUnlit, &library );
        _root->getHlmsManager()->registerHlms(hlmsUnlit);

        auto archivePbs = Ogre::ArchiveManager::getSingletonPtr()->load(pbsPath, "FileSystem", true);
        auto hlmsPbs = new Ogre::HlmsPbs(archivePbs, &library );
        _root->getHlmsManager()->registerHlms(hlmsPbs);
    }
}

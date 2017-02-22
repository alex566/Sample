//
//  SAWindow.hpp
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#ifndef SAWindow_hpp
#define SAWindow_hpp

// Forward declarations
namespace Ogre {
    class Root;
    class RenderWindow;
};

namespace SA {
    class CubeSceneView;
}


namespace SA {

    class Window {

        Ogre::Root *_root;
        Ogre::RenderWindow *_renderWindow;

        CubeSceneView *_cubeView;

    public:

        Window();

        ~Window();

        void renderOneFrame();

        void setupWindow(float width, float height);
        
        void * const getAttribute(const char *name);

    private:

        void setupScene();

        void setupHLSL();
    };
}

#endif /* SAWindow_hpp */

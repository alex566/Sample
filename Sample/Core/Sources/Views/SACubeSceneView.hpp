//
//  SACubeSceneView.hpp
//  Sample
//
//  Created by Alexey on 23.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#ifndef SACubeSceneView_hpp
#define SACubeSceneView_hpp

#include <vector>

namespace Ogre {
    class SceneManager;
    class Vector3;
    class ManualObject;
}

namespace SA {

    class CubeSceneView {

        Ogre::ManualObject *_manualObject;

        std::vector<Ogre::Vector3> _vertices;

    public:

        CubeSceneView(Ogre::SceneManager *sceneManager);

        virtual ~CubeSceneView();

    private:

        void fillBuffer(float uvOffset);
    };

}

#endif /* SACubeSceneView_hpp */

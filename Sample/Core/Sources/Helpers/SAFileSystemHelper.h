//
//  SAFileSystemHelper.hpp
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#ifndef SAFileSystemHelper_hpp
#define SAFileSystemHelper_hpp

#include <string>

namespace SA {

    class FileSystemHelper {

    public:

        static std::string ResourcesFolderPath();

#if DEBUG
        static void PrintDirectoryContents(std::string directory);
#endif

    };

}

#endif /* SAFileSystemHelper_hpp */

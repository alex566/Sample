//
//  SAFileSystemHelper.cpp
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#include "SAFileSystemHelper.h"

// Cocoa
#import <Foundation/Foundation.h>

namespace SA {

    std::string FileSystemHelper::ResourcesFolderPath() {
        return [[[NSBundle mainBundle] resourcePath] UTF8String];
    }

}

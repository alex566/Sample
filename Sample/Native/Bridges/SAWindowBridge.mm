//
//  SAWindowBridge.c
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

#include "SAWindowBridge.h"

#include "SAWindow.hpp"

#import <UIKit/UIKit.h>

#define SAWindow(ptr) reinterpret_cast<SA::Window *>(ptr)

void *SAWindow_Create() {
    return new SA::Window();
}

void SAWindow_Destroy(void *ptr) {
    delete SAWindow(ptr);
}

void SAWindow_RenderOneFrame(void *ptr) {
    SAWindow(ptr)->renderOneFrame();
}

void SAWindow_SetupWindow(void *ptr, float width, float height) {
    SAWindow(ptr)->setupWindow(width, height);
}

UIView *SAWindow_GetAttribute(void *ptr, const char *name) {
    return (__bridge UIView *)SAWindow(ptr)->getAttribute(name);
}

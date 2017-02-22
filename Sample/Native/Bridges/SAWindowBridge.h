//
//  SAWindowBridge.h
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

@class UIView;

#ifdef __cplusplus
extern "C" {
#endif

    void *SAWindow_Create();

    void SAWindow_Destroy(void *);

    void SAWindow_RenderOneFrame(void *);

    void SAWindow_SetupWindow(void *ptr, float width, float height);

    UIView *SAWindow_GetAttribute(void *ptr, const char *name);

#ifdef __cplusplus
}
#endif

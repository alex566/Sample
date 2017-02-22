//
//  SAWindowBridge.swift
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import Foundation
import UIKit

final class SAWindow {

    private var objPtr: UnsafeMutableRawPointer

    init(width: Float, height: Float) {
        objPtr = SAWindow_Create()
        SAWindow_SetupWindow(objPtr, width, height)
    }

    deinit {
        SAWindow_Destroy(objPtr)
    }

    var view: UIView {
        let view = SAWindow_GetAttribute(objPtr, String(describing: UIView.self))
        if let view = view {
            return view
        } else {
            return UIView()
        }
    }

    func renderOneFrame() {
        SAWindow_RenderOneFrame(objPtr)
    }
}

//
//  ViewController.swift
//  Sample
//
//  Created by Alexey on 22.02.17.
//  Copyright © 2017 Alexey. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    var displayLink: CADisplayLink!

    lazy var window: SAWindow = {
        let size = UIScreen.main.bounds.size
        return SAWindow(width: Float(size.width),
                        height: Float(size.height))
    }()

    override func loadView() {
        view = window.view
        setupDisplayLink()
    }

    deinit {
        invalidateDisplayLink()
    }
}

// MARK: - Rendering
extension ViewController {

    func setupDisplayLink() {
        displayLink = CADisplayLink(target: self, selector: #selector(displayLinkAction))
        displayLink.preferredFramesPerSecond = 60
        displayLink.add(to: RunLoop.main,
                        forMode: .defaultRunLoopMode)
    }

    func invalidateDisplayLink() {
        displayLink.invalidate()
        displayLink = nil
    }

    @objc func displayLinkAction() {
        window.renderOneFrame()
    }
}

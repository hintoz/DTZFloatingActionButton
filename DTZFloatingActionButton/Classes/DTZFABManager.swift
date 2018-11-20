//
//  DTZFABManager.swift
//  DTZFloatingActionButton
//
//  Created by hintoz on 10.02.17.
//  Copyright © 2017 Evgeny Dats. All rights reserved.
//

import UIKit

open class DTZFABManager {
    
    static public let shared = DTZFABManager()
    
    private init() {}
    
    var fabWindow = DTZFABWindow(frame: UIScreen.main.bounds)
    
    var fabController = DTZFABViewController()
    
    open func show() {
        fabWindow.rootViewController = fabController
        fabWindow.isHidden = false
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.fabWindow.alpha = 1
        })
    }
    
    open func hide() {
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.fabWindow.alpha = 0
        }, completion: { finished in
            self.fabWindow.isHidden = true
        })
    }
    
    open func button() -> DTZFloatingActionButton {
        return fabController.fab
    }
}

//
//  DTZFABWindow.swift
//  DTZFloatingActionButton
//
//  Created by hintoz on 10.02.17.
//  Copyright © 2017 Evgeny Dats. All rights reserved.
//

import UIKit

class DTZFABWindow:  UIWindow{
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        self.windowLevel = UIWindow.Level.normal
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let fabViewController = rootViewController as? DTZFABViewController
        if let fab = fabViewController?.fab {
            if fab.frame.contains(point) {
                return true
            }
        }
        return false
    }
}

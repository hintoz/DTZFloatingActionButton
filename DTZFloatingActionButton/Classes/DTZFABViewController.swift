//
//  DTZFABViewController.swift
//  DTZFloatingActionButton
//
//  Created by hintoz on 10.02.17.
//  Copyright © 2017 Evgeny Dats. All rights reserved.
//

import UIKit

open class DTZFABViewController: UIViewController {
    let fab = DTZFloatingActionButton()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(fab)
    }
}

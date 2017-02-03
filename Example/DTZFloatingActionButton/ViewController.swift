//
//  ViewController.swift
//  DTZFloatingActionButton-Sample
//
//  Created by hintoz on 03.02.17.
//  Copyright © 2017 Evgeny Dats. All rights reserved.
//

import UIKit
import DTZFloatingActionButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let actionButton = DTZFloatingActionButton()
        actionButton.handler = {
            button in
            self.performSegue(withIdentifier: "tableViewSegue", sender: nil)
        }
        
        self.view.addSubview(actionButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


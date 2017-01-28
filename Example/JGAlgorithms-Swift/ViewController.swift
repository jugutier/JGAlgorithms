//
//  ViewController.swift
//  JGAlgorithms-Swift
//
//  Created by Julian Gutierrez on 1/22/17.
//  Copyright © 2017 Julian Gutierrez Ferrara. All rights reserved.
//

import UIKit
import JGAlgorithms

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("Nothing visual to display yet. Please see the tests and classes offered.");
        
        let list = JGLinkedList()
        
        list.add("I'm Obj-C code running on Swift!!")
        list.add("Hello World !")
        NSLog("%@", list)
        
    }
}


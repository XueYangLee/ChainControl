//
//  ViewController.swift
//  ChainControl
//
//  Created by XueYangLee on 04/23/2024.
//  Copyright (c) 2024 XueYangLee. All rights reserved.
//

import UIKit
import ChainControl

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton(frame: CGRect(x: 10, y: 100, width: 100, height: 100)).ctrl_backgroundColor(.green)
        self.view.addSubview(btn)
        
        let text = UITextField(frame: CGRect(x: 10, y: 250, width: 100, height: 50)).ctrl_placeholder("hahahah")
        self.view.addSubview(text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


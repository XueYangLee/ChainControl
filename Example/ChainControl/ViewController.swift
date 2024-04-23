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
        
        let btnExample = UIButton(frame: CGRect(x: 10, y: 100, width: 50, height: 50)).ctrl_title("button").ctrl_titleColor(.white).ctrl_font(.systemFont(ofSize: 16)).ctrl_backgroundColor(.blue).ctrl_shadow(color: .gray)
        self.view.addSubview(btnExample)
        
        let btn = UIButton(frame: CGRect(x: 10, y: 200, width: 50, height: 50))
        btn.setTitle("button", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16)
        btn.backgroundColor = .blue
        btn.layer.shadowColor = UIColor.gray.cgColor
        btn.layer.shadowOpacity = 1
        btn.layer.shadowOffset = CGSize(width: 1, height: 1)
        btn.layer.shadowRadius = 2
        self.view.addSubview(btn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


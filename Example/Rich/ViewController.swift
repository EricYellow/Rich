//
//  ViewController.swift
//  Rich
//
//  Created by hjphfut@163.com on 12/09/2017.
//  Copyright (c) 2017 hjphfut@163.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goToRich(){
        
        let message = MessageViewController()
        navigationController?.pushViewController(message, animated: true)
    }

}


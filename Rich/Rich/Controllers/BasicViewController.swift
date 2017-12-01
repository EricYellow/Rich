//
//  BasicViewController.swift
//  Gloria
//
//  Created by 黄继平 on 2017/11/28.
//  Copyright © 2017年 Eric. All rights reserved.
//

import UIKit
import YogaKit

final class BasicViewController: UIViewController {
    override func viewDidLoad() {
        let containerSize = self.view.bounds.size
        
        let root = self.view!
        root.backgroundColor = .white
        root.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(containerSize.width)
            layout.height = YGValue(containerSize.height)
            layout.alignItems = .center
            layout.justifyContent = .center
        }
        
        let child1 = UIView()
        child1.backgroundColor = .blue
        child1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 100
            layout.height = 10
            layout.marginBottom = 25
        }
        root.addSubview(child1)
        
        let child2 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        child2.backgroundColor = .green
        child2.configureLayout { (layout) in
            layout.isEnabled = true
            layout.alignSelf = .flexEnd
        }
        root.addSubview(child2)
        
        let child3 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        child3.backgroundColor = .yellow
        child3.configureLayout { (layout) in
            layout.isEnabled = true
            layout.alignSelf = .flexStart
        }
        root.addSubview(child3)
        
        root.yoga.applyLayout(preservingOrigin: true)
    }
}


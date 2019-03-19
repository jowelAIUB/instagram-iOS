//
//  HomeViewController.swift
//  instagram
//
//  Created by Admin on 19/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import UIKit

class HomeViewController:UIViewController {
    var viewControllerNameLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUpSubViews()
    }
    
    
    func setUpSubViews() {
        viewControllerNameLabel = UILabel.init(frame: CGRect.init(x: 20, y: 100, width: 300, height: 300))
        viewControllerNameLabel.text = "HomeViewController Label"
        viewControllerNameLabel.textColor = .red
        
        self.view.addSubview(viewControllerNameLabel)
    }
}

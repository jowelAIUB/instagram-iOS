//
//  ViewController.swift
//  instagram
//
//  Created by Admin on 15/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import UIKit

//HomeViewController

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

//ExploreViewController

class ExploreViewController: UIViewController {
    
}

//ProfileViewController

class ProfileViewController: UIViewController {
    
}

//ContainerViewController

class ContainerViewController: UIViewController {

    var homeViewController:HomeViewController!
    
    var exploreViewController:ExploreViewController!
    
    var profileViewController:ProfileViewController!
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeChildViewControllers()
        
        //Add default view controller into rootview controller
        displayDefaultViewController()
        
        print("View did load called ")
    }
    
    
    func initializeChildViewControllers() {
        homeViewController = HomeViewController()
        
        exploreViewController = ExploreViewController()
        
        profileViewController = ProfileViewController()
    }
    
    
    func displayDefaultViewController() {
        /** Display HomeViewController as DefaultViewController
        **/
        displayChildViewController(childViewController: homeViewController)
    }
    
    
    func displayChildViewController(childViewController:UIViewController) {
        self.addChild(childViewController)
        
        childViewController.view.frame = self.view.frame
        
        self.view.addSubview(childViewController.view)
        
        childViewController.didMove(toParent: self)
    }
    
    
    func removeChildViewController(childViewControlelr:UIViewController) {
        childViewControlelr.willMove(toParent: nil)
        
        childViewControlelr.view.removeFromSuperview()
        
        childViewControlelr.removeFromParent()
    }
}


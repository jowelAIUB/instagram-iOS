//
//  ViewController.swift
//  instagram
//
//  Created by Admin on 15/03/2019.
//  Copyright © 2019 UgoRound. All rights reserved.
//

import UIKit

//HomeViewController



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


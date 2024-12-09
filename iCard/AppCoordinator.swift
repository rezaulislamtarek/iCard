//
//  AppCoordinator.swift
//  iCard
//
//  Created by Rezaul Islam on 9/12/24.
//

import Foundation
import UIKit

class AppCoordinator {
    private var navigationConroller : UINavigationController
    
    init(navigationConroller: UINavigationController) {
        self.navigationConroller = navigationConroller
    }
    
    func start(){
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationConroller.pushViewController(homeViewController, animated: false)
    }
    
    func navigateToConfigureScreen(){
        let configControlleer = ConfigurationViewController()
        navigationConroller.pushViewController(configControlleer, animated: true)
    }
    
}

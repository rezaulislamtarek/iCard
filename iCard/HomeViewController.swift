//
//  HomeViewController.swift
//  iCard
//
//  Created by Rezaul Islam on 9/12/24.
//

import UIKit

class HomeViewController: UIViewController {
    var coordinator: AppCoordinator?
    private lazy var button: UIButton = {
        let btn = UIButton(type: .system)
        
        // Title settings
        btn.setTitle("Navigate to Config", for: .normal)
        btn.setTitleColor(.white, for: .normal) // Title color
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)  // Font size and weight
        
        // Background color & rounded corners
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = true
        
        // Shadow for depth effect
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 0, height: 2)
        btn.layer.shadowOpacity = 0.3
        btn.layer.shadowRadius = 4
        
        // Padding for title
        btn.contentEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)
        
        // Button size
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        button.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        
        
    }
    
    @objc private func btnAction(){
        print("btn clicked")
        coordinator?.navigateToConfigureScreen()
    }
    

     

}

#Preview{
    HomeViewController()
}

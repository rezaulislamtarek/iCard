//
//  ConfigurationViewController.swift
//  iCard
//
//  Created by Rezaul Islam on 9/12/24.
//

import UIKit

class ConfigurationViewController: UIViewController {
    
    // Mark: - Constants for layout
    private enum Layout{
        static let padding : CGFloat = 20
        static let textFieldHeight: CGFloat = 44
        static let logoHeight : CGFloat = 100
        static let stackViewSpacinng : CGFloat = 20
    }
    // Mark: - UI Elements
    private lazy var logoImageView : UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        imgView.image = UIImage(systemName: "photo")
        return imgView
    }()
    
    private lazy var stackView  : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            logoImageView
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        view.addSubview(stackView)
        setUpConstraints()
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Layout.padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.padding)
        ])
        
        logoImageView.heightAnchor.constraint(equalToConstant: Layout.logoHeight).isActive = true

    }
 
}

 
#Preview{
    ConfigurationViewController()
}

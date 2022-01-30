//
//  AppCoordnitor.swift
//  KitchenApp
//
//  Created by Akash Desai on 2022-01-29.
//

import Foundation
import UIKit

class AppCoordnitor: UIViewController {
    
    // MARK: - Properties
    let signInButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        button.setTitle("Sign Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var curvedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var logoView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = Asset.Assets.logoBig.image
        return imageView
    }()
    
    var buttonStack: UIStackView!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initialAnimations()
        setupView()
    }
    
}

// MARK: - SetupView
private extension AppCoordnitor {
    func setupView() {
        view.backgroundColor = Asset.Colors.wetAshphaltBlue.color
        
        view.addSubview(logoView)
        logoView.alpha = 1
        
        buttonStack = UIStackView()
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.spacing = 18
        buttonStack.alignment = .center
        buttonStack.distribution = .equalSpacing
        buttonStack.axis = .vertical
        
        buttonStack.addArrangedSubview(signInButton)
        buttonStack.addArrangedSubview(signUpButton)
        view.addSubview(curvedView)
        view.addSubview(buttonStack)
        
        curvedView.backgroundColor = Asset.Colors.cloudsWhite.color
        curvedView.layer.cornerRadius = 28
        curvedView.layer.shadowColor = Asset.Colors.cloudsWhite.color.cgColor
        curvedView.layer.shadowOffset = .zero
        curvedView.layer.shadowOpacity = 0.8
        curvedView.layer.shadowRadius = 5.0
      
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.topAnchor.constraint(equalTo: view.topAnchor),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoView.bottomAnchor.constraint(equalTo: view.centerYAnchor),
            
            buttonStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            buttonStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonStack.heightAnchor.constraint(equalToConstant: view.frame.height * 0.13),
            
            curvedView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.3),
            curvedView.widthAnchor.constraint(equalToConstant: view.frame.width),
            curvedView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
            curvedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            signInButton.widthAnchor.constraint(equalToConstant: view.frame.width - 85),
            signUpButton.widthAnchor.constraint(equalToConstant: view.frame.width - 85),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.heightAnchor.constraint(equalToConstant: 40)

        ])
        signInButton.wetAshphaltBlueRoundedButton()
        signUpButton.wetAshphaltBlueRoundedButton()
        
        
    }
    
    func initialAnimations() {
        UIView.animate(withDuration: 0.7, delay: 0.5, usingSpringWithDamping: 6, initialSpringVelocity: 1, options: .curveEaseIn, animations: ({
            self.logoView.frame.origin.y += 1000
        }), completion: nil)
    }
    
}
private extension AppCoordnitor {
    
    @objc func signInButtonTapped() {
        
    }
    
    @objc func signUpButtonTapped() {
        
    }
}

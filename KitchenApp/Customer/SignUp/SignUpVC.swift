//
//  SignUpVC.swift
//  KitchenApp
//
//  Created by Akash Desai on 2022-01-29.
//

import Foundation
import UIKit

class SignUpVC: UIViewController {
    
    // MARK: - Properties
    private let userFormStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .leading
        stack.spacing = 12.0
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        let titleLabels: [CustomTextField] = ["Full Name",
                                              "Phone Number",
                                              "Email",
                                              "Password",
                                              "Re-enter Password"].map {
            let textField = CustomTextField()
            textField.placeholder = $0
            textField.keyboardType = $0 == "Phone Number" ? .numberPad : .alphabet
            let isPassword = $0 == "Password" || $0 == "Re-enter Password" ? true : false
            textField.isSecureTextEntry = isPassword
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.layer.borderColor = Asset.Colors.midnightBlue.color.cgColor
            textField.layer.borderWidth = 2
            textField.font = UIFont(name: "HelveticaNeue-Regular", size: 16.0)
            textField.layer.cornerRadius = 12
            textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
            textField.widthAnchor.constraint(equalToConstant: screen.width - 80).isActive = true
            stack.addArrangedSubview(textField)
            return textField
        }
        return stack
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 18.0)
        button.setTitleColor(Asset.Colors.cloudsWhite.color, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setupView()
    }
    
    // MARK: - ViewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = "Sign Up"
        
    }
    
}

// MARK: - Setup
private extension SignUpVC {
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(userFormStackView)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            userFormStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            userFormStackView.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 40),
            userFormStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            nextButton.heightAnchor.constraint(equalToConstant: 44),
            nextButton.widthAnchor.constraint(equalToConstant: 88)
            
        ])
        nextButton.wetAshphaltBlueRoundedButton()
        
        
    }
}

private extension SignUpVC {
    @objc func nextButtonTapped() {
        
    }
    
}

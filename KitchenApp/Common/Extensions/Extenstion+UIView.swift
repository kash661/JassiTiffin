//
//  Extenstion+UIView.swift
//  KitchenApp
//
//  Created by Akash Desai on 2022-01-29.
//

import Foundation
import UIKit

extension UIView {
    func embed(in view: UIView) {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}


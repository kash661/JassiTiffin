//
//  CustomTextFieldView.swift
//  KitchenApp
//
//  Created by Akash Desai on 2022-01-30.
//

import Foundation
import UIKit

// MARK: - Custom textfield to add additional padding and icons
public class CustomTextField: UITextField {
    
    let padding = UIEdgeInsets(top: 2, left: 12, bottom: 5, right: 10)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    //sets an an img at the left side of the textfield
    func setIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 2.5, width: 24, height: 24))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
}

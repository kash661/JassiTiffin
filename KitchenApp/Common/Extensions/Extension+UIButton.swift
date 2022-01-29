//
//  Extension+UIButton.swift
//  KitchenApp
//
//  Created by Akash Desai on 2022-01-29.
//

import Foundation
import UIKit

extension UIButton {
    
    func wetAshphaltBlueRoundedButton() {
        let image = UIImage(color: Asset.Colors.wetAshphaltBlue.color, size: CGSize(width: 1.0, height: 1.0))
        let disabledColor = Asset.Colors.wetAshphaltBlue.color.withAlphaComponent(0.7)
        let disabledImage = UIImage(color: disabledColor, size: CGSize(width: 1.0, height: 1.0))
        self.setBackgroundImage(image, for: .normal)
        self.setBackgroundImage(disabledImage, for: .disabled)
        self.clipsToBounds = true
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 18.0)
        self.layer.cornerRadius = 8
        self.tintColor = Asset.Colors.cloudsWhite.color
    }
    
}

//
//  CustomButton.swift
//  Calculator
//
//  Created by Наталья Карпова on 10.10.2022.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var roundedButton: CGFloat = 0.0 {
        didSet { self.layer.cornerRadius = roundedButton }
    }
    
}

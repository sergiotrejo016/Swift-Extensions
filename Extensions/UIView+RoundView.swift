//
//  UIView+RoundView.swift
//
//  Created by Sergio Trejo on 18/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit

extension UIView {
    
    func round() {
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.frame.width / 2
        }
    }
    
    func setCornerRadius(with value: CGFloat = 5.0) {
        DispatchQueue.main.async {
            self.layer.cornerRadius = value
        }
    }
    
    func setBorder(with value: CGFloat = 1) {
        self.layer.borderWidth = value
    }
    
    func setBorderColor(with color: UIColor = .gray) {
        self.layer.borderColor = color.cgColor
    }
}

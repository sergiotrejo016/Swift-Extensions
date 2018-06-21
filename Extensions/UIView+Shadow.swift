//
//  UIView+Shadow.swift
//
//  Created by Sergio Trejo on 20/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit

extension UIView {
/**
     Description
     
     ## Adding Shadow ##
     1. lorem ipsum
     2. lorem ipsum
     3. lorem ipsum
     
 */
    func addShadow() {
        DispatchQueue.main.async {
            self.layer.cornerRadius = 5
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOffset = .zero
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize.zero
            self.layer.shadowRadius = 5
            self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
            self.layer.shouldRasterize = false
        }
    }
}

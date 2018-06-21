//
//  UIView+HideKeyboard.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit

extension UIView {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        self.endEditing(true)
    }
    
}




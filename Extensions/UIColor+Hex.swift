//
//  UIColor+Hex.swift
//
//  Created by Sergio Trejo on 18/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hexString: String) {
        
        var cleanedHexString = hexString
        if hexString.hasPrefix("#") {
            cleanedHexString = String(hexString.dropFirst())
        }
        
        var rgbValue: UInt32 = 0
        Scanner(string: cleanedHexString).scanHexInt32(&rgbValue)
        
        let red = CGFloat((rgbValue >> 16) & 0xff) / 255.0
        let green = CGFloat((rgbValue >> 08) & 0xff) / 255.0
        let blue = CGFloat((rgbValue >> 00) & 0xff) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
}

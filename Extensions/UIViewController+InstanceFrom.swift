//
//  UIViewController+InstanceFrom.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController{
    
    
    
    enum Storyboard: String {
        case Main
    }
    
    
    class func instantiateFrom(_ storyboard: Storyboard) -> Self{
        return instantiateFromStoryboard(storyboard.rawValue)
    }
    
    fileprivate class func instantiateFromStoryboard<T>(_ name: String) -> T{
        
        let storyboard = UIStoryboard(name: name, bundle: nil)
        
        let identifier = String(describing: self)
        
        let controller = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        
        return controller
        
    }
    
}

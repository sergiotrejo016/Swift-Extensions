//
//  Double.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation

extension Double {
    
    var stringValue: String {
        return String(describing: self)
    }
    
    var roundIntValue: Int {
        return Int(Darwin.round(self))
    }
    
    var floatValue: Float {
        return Float(self)
    }
    
}

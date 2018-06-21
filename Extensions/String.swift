//
//  String.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation

extension String {
    
    var intValue: Int {
        return Int(self) ?? 0
    }
    
    var floatValue: Float {
        return Float(self) ?? Float(0.0)
    }
    
    var doubleValue: Double {
        return Double(self) ?? Double(0.0)
    }
    
}

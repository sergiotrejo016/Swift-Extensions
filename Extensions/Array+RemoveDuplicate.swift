//
//  Arrar+RemoveDuplicate.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation

public extension Array where Element: Hashable {
    public mutating func unify() {
        self = unified()
    }
}

public extension Collection where Element: Hashable {
    public func unified() -> [Element] {
        return reduce(into: []) {
            if !$0.contains($1) {
                $0.append($1)
            }
        }
    }
}

//
//  Array+RemoveElement.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    @discardableResult
    public mutating func remove(element: Element) -> Index? {
        guard let index = index(of: element) else { return nil }
        remove(at: index)
        return index
    }
    
    @discardableResult
    public mutating func remove(elements: [Element]) -> [Index] {
        return elements.compactMap { remove(element: $0) }
    }
}

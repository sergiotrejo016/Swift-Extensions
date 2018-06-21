//
//  UICollectionView+RegisterCell.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView{
    
    func registerCell<T: UICollectionViewCell>(_ : T.Type) {
        self.register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func dequeue<T: UICollectionViewCell>(_ : T.Type, indexPath: IndexPath) -> T{
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as? T else{
            fatalError("Could not deque cell with type \(T.self)")
        }
        return cell
    }
    
}


//
//  UITableView.swift
//
//  Created by Sergio Trejo on 21/06/18.
//  Copyright © 2018 Sergio Trejo. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{
    
    func registerCell<T: UITableViewCell>(_ : T.Type) {
     self.register(T.self, forCellReuseIdentifier: String(describing: T.self))
    }
    
    func dequeue<T: UITableViewCell>(_ : T.Type) -> T{
        guard let cell = dequeueReusableCell(withIdentifier: String(describing: T.self)) as? T else{
            fatalError("Could not deque cell with type \(T.self)")
        }   
        return cell
    }
    
}

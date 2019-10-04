//
//  UITableViewExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension UITableView {
    /*
     Allows to shorten the UITableViewCell's registration
     Example: `tableView.register(UINib(nibName: "SomeCell", bundle: nil), forCellReuseIdentifier: "SomeCell"` becomes `tableView.register(SomeCell.self)`
     */
    func register(_ cell: UITableViewCell.Type) {
        self.register(UINib(nibName: String(describing: cell), bundle: nil), forCellReuseIdentifier: String(describing: cell))
    }
    
    /*
     Allows to shorten the UITableViewCell's dequeueing
     Example: `let cell = tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath) as! SomeCell` becomes `let cell = tableView.dequeue(SomeCell.self, for: indexPath)`
     */
    func dequeue<T: UITableViewCell>(_ reusableCell: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}

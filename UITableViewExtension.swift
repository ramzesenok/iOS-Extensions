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
    Allows to register multiple UITableViewCells in one line
    Example: `tableView.register(UINib(nibName: "SomeCell", bundle: nil), forCellReuseIdentifier: "SomeCell"` becomes `tableView.register(SomeCell.self)`
    */
    func register(_ cells: UITableViewCell.Type...) {
        cells.forEach {
            register($0)
        }
    }
    
    /*
     Allows to shorten the UITableViewCell's dequeueing
     Example: `let cell = tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath) as! SomeCell` becomes `let cell = tableView.dequeue(SomeCell.self, for: indexPath)`
     */
    func dequeue<T: UITableViewCell>(_ reusableCell: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    /*
     Allows to apply all cell's transformations in a block during cell's initialization
     Example:
     `
        let cell = tableView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath) as! SomeCell
     
        cell.doSomething()
        cell.titleLabel.text = "Some text"
        
        return cell
     `
     becomes
     `
        return tableView.dequeue(SomeCell.self, for: indexPath) {
            $0.doSomething()
            $0.titleLabel.text = "Some text"
        }
     `
     */
    func dequeue<T: UITableViewCell>(_ cell: T.Type, for indexPath: IndexPath, applying transformations: (T) -> ()) -> T {
        let dequeuedCell = dequeue(cell, for: indexPath)
        
        transformations(dequeuedCell)
        
        return dequeuedCell
    }
}

//
//  UICollectionViewExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension UICollectionView {
    /*
     Allows to shorten the UICollectionViewCell's registration
     Example: `collectionView.register(UINib(nibName: "SomeCell", bundle: nil), forCellReuseIdentifier: "SomeCell"` becomes `collectionView.register(SomeCell.self)`
     */
    func register(_ cell: UICollectionViewCell.Type) {
        self.register(UINib(nibName: String(describing: cell), bundle: nil), forCellWithReuseIdentifier: String(describing: cell))
    }
    
    /*
     Allows to shorten the UICollectionViewCell's dequeueing
     Example: `let cell = collectionView.dequeueReusableCell(withIdentifier: "SomeCell", for: indexPath) as! SomeCell` becomes `let cell = collectionView.dequeue(SomeCell.self, for: indexPath)`
     */
    func dequeue<T: UICollectionViewCell>(_ reusableCell: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}

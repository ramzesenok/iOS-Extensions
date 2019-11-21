//
//  UIViewExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension UIView {
    /*
     Allows to change only width of a view
     Example: `view.frame = CGRect(origin: view.frame.origin, size: CGSize(width: someWidth, height: view.frame.height))` becomes `view.set(width: someWidth)`
     */
    func set(width: CGFloat) {
        frame = CGRect(origin: frame.origin, size: CGSize(width: width, height: frame.height))
    }
    
    /*
    Allows to change only height of a view
    Example: `view.frame = CGRect(origin: view.frame.origin, size: CGSize(width: view.frame.width, height: someHeight))` becomes `view.set(height: someHeight)`
    */
    func set(height: CGFloat) {
        frame = CGRect(origin: frame.origin, size: CGSize(width: frame.width, height: height))
    }
    
    /*
    Allows to change only size of a view
    Example: `view.frame = CGRect(origin: frame.origin, size: someSize)` becomes `view.set(size: someSize)`
    */
    func set(size: CGSize) {
        frame = CGRect(origin: frame.origin, size: size)
    }
    
    /*
    Allows to change only origin of a view
    Example: `view.frame = CGRect(origin: someOrigin, size: frame.size)` becomes `view.set(origin: someOrigin)`
    */
    func set(origin: CGPoint) {
        frame = CGRect(origin: origin, size: frame.size)
    }
    
    /*
    Allows to get the same view with adjusted size
    Example:
     `
         view.frame = CGRect(origin: view.frame.origin, size: someSize)
         useView(view)
     `
     becomes
     `
         useView(view.with(size: someSize))
     `
    */
    func with(size: CGSize) -> UIView {
        set(size: size)
        
        return self
    }
}

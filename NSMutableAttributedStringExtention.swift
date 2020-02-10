//
//  NSMutableAttributedStringExtention.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 10.02.20.
//  Copyright © 2020 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    /*
     Typealias to group string value, font style and font size in one
     
     `style` and `size` parameters have types that are declared in `UIFont` extension
     */
    typealias AttributedStringItem = (value: String, style: UIFont.FontStyle, size: UIFont.FontSize)
    
    /*
     `NSMutableAttributedString`'s init that takes an array of `AttributedStringItem`s and returns one attirbuted string back, that includes all the given strings and their attributes
     */
    convenience init(_ attributedItems: AttributedStringItem...) {
        self.init()
        
        attributedItems.forEach {
            append(NSAttributedString(string: $0.value, attributes: [.font: UIFont.pl($0.style, ofSize: $0.size)]))
        }
    }
}

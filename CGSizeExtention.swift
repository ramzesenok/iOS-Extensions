//
//  CGSizeExtention.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 25.03.20.
//  Copyright © 2020 Roman Mirzoyan. All rights reserved.
//

import Foundation

// Allows to create square CGSize out of a Float. The value is set to both `width` and `height`
// Example: CGRect(origin: .zero, size: 40.5)
extension CGSize: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = Float
    
    public init(floatLiteral value: Float) {
        self = CGSize(width: CGFloat(value), height: CGFloat(value))
    }
}

// Allows to create square CGSize out of a Int. The value is set to both `width` and `height`
// Example: CGRect(origin: .zero, size: 40)
extension CGSize: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int
    
    public init(integerLiteral value: Int) {
        self = CGSize(width: value, height: value)
    }
}

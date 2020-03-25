//
//  CGPointExtention.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 25.03.20.
//  Copyright © 2020 Roman Mirzoyan. All rights reserved.
//

import Foundation

// Allows to create square CGPoint out of a Float. The value is set to both `x` and `y`
// Example: CGRect(origin: 20.5, size: CGSize(width: 40, height: 40))
extension CGPoint: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = Float
    
    public init(floatLiteral value: Float) {
        self = CGPoint(x: CGFloat(value), y: CGFloat(value))
    }
}

// Allows to create square CGPoint out of a Int. The value is set to both `x` and `y`
// Example: CGRect(origin: 20, size: CGSize(width: 40, height: 40))
extension CGPoint: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int
    
    public init(integerLiteral value: Int) {
        self = CGPoint(x: value, y: value)
    }
}

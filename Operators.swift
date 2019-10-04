//
//  Operators.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

// MARK: Implication
// Does the same job as `if` statement, but designed for one-liners
// Example: `if condition { print("hello") }` becomes `condition => print("hello")`
precedencegroup ImplicationPrecedence {
    associativity: left
    lowerThan: LogicalConjunctionPrecedence, ComparisonPrecedence
}

infix operator => : ImplicationPrecedence

func =>(lhs: Bool, rhs: @autoclosure () -> (Void)) {
    if lhs {
        rhs()
    }
}

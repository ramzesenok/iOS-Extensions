//
//  HelpfulFunctions.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 21.11.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

/// Returns `true` if all of conditions are `true`
func conjunctAll(conditions: Bool...) -> Bool {
    return !conditions.contains(false)
}

/// Returns `true` if at least one condition is `true`
func disjunctAll(conditions: Bool...) -> Bool {
    return conditions.contains(true)
}

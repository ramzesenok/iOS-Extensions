//
//  OptionalExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension Optional {
    /*
     Inspired by Kotlin's `let` method. Short way to use Swift's `if let`
     Example: `if let nonOptional = someOptional { ... }` becomes `someOptional.let { ... }`
     */
    func `let`(_ action: @autoclosure () -> ((Wrapped) -> ())) {
        if let unwrapped = self {
            action()(unwrapped)
        }
    }
}

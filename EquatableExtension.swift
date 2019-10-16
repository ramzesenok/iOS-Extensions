//
//  EquatableExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import Foundation

extension Equatable {
    /*
     Allows to shorten the logical or checks
     Example: `someVar == firstOption || someVar == secondOption` becomes `someVar.isOne(of: firstOption, secondOption)`
     */
    func isOne(of options: Self...) -> Bool {
        return options.contains(self)
    }
}

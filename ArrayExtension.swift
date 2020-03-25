//
//  EquatableExtensoipn.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 04.10.19.
//  Copyright © 2019 Roman Mirzoyan. All rights reserved.
//

import Foundation

extension Array where Element: Collection {
    /*
     Allows to go through matrixes and perform actions with index pairs
     Example:
     let arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
     arr.mapMatrixIndexes { (x, y) in
        // Perform some action
     }
     */
    func mapMatrixIndexes(_ actionClosure: @escaping (Int, Int) -> ()) {
        for i in 0..<self.count {
            for j in 0..<self[i].count {
                actionClosure(i, j)
            }
        }
    }
}

extension Array where Element: Hashable {
    /*
     Returns back an array of the same Elements but without any duplicates
     */
    func removedDuplicates() -> Self {
        return Array(Set(self))
    }
}

//
//  UIFontExtension.swift
//  iOS Extensions
//
//  Created by Roman Mirzoyan on 10.02.20.
//  Copyright © 2020 Roman Mirzoyan. All rights reserved.
//

import UIKit

extension UIFont {
    /*
     Enum that holds cases with different font styles and their font filenames as `RawValue`s
     
     Before using add font filenames
     */
    enum FontStyle: String {
        case light = ""
        case regular = ""
        case bold = ""
    }
    
    /*
     Enum that holds font sizes that one uses in the project with the actual `CGFloat` values as their `RawValue`
     */
    enum FontSize: CGFloat {
        case huge = 19
        case big = 17
        case regular = 15
        case small  = 13
    }
    
    /*
     Func that returns one's brand font depending on provided style and size
     
     Before using replace function's name with the brand's name
     */
    class func brand(_ style: FontStyle, ofSize size: FontSize) -> UIFont { UIFont(name: style.rawValue, size: size.rawValue)! }
}

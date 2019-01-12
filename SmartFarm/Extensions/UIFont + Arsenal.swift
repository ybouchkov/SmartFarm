//
//  UIFont + Arsenal.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

/// Arsenal AppFont
/// usage: let lable.font = Arsenal.bold.of(size: 17.0)
enum Arsenal: String {
    case bold = "Arsenal-Bold"
    case boldItalic = "Arsenal-BoldItalic"
    case italic = "Arsenal-Italic"
    case regular = "Arsenal-Regular"
    
    func of(size: CGFloat) -> UIFont! {
        return UIFont(name: rawValue, size: size)
    }

}

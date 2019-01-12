//
//  DefaultTheme.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 12.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class DefaultTheme: Theme {
    
    var navigationColour: UIColor {
        return UIColor.AppColour.navigationBarColour
    }
    
    var navigationTitleColour: UIColor {
        return UIColor.AppColour.navigationTitleColour
    }
    
    var navigationBarTranslucent: Bool {
        return false
    }
    
    var navigationTitleFont: UIFont {
        return UIFont.navigationTitleFont
    }
}

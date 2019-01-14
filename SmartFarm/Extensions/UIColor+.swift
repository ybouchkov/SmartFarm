//
//  UIColor+.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

extension UIColor {
    
    // NOTE: Colour scheme
    /// An enum that define all colours in the app
    enum AppColour {
        
        // Navigation background colour
        
        static var navigationBarColour: UIColor {
            return #colorLiteral(red: 0, green: 0.9019607843, blue: 0.4509803922, alpha: 1)
        }
        
        // Navigation Title Colour
        
        static var navigationTitleColour: UIColor {
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        // MENU: Section colour
        
        static var sectionTitleColour: UIColor {
            return #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        }
    }
}

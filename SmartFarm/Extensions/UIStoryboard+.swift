//
//  UIStoryboard+.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

/// Enum of all storyboards in the app
enum Storyboard: String {
    
    case main
    case menu
    
    var fileName: String {
        return rawValue.capitalizingFirstLetter()
    }
    
    var instance: UIStoryboard {
        return UIStoryboard(name: fileName, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(from viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        // swiftlint:disable force_cast
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
    
    func instantiatedViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}

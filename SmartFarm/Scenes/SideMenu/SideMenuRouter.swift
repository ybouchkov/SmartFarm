//
//  SideMenuRouter.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol SideMenuNavigationLogic {
    
    func navigate(to selectedMenuItem: SideMenuItem)
}

class SideMenuRouter: SideMenuNavigationLogic {
    
    // MARK: - Properties
    
    weak var viewController: SideMenuViewController?
    
    // MARK: - SideMenuNavigationLogic
    
    func navigate(to selectedMenuItem: SideMenuItem) {
        switch selectedMenuItem.action {
        case .cowsRow:
            let cowsScene = CowsViewController.instantiateFrom(appStoryboard: .cows)
            viewController?.show(cowsScene, sender: nil)
        case .femalesRow:
            let femalesScene = FemalesViewController.instantiateFrom(appStoryboard: .females)
            viewController?.show(femalesScene, sender: nil)
        default:
            break
        }
    }
}

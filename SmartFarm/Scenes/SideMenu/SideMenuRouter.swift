//
//  SideMenuRouter.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol SideMenuNavigationLogic {
    
    func navigate()
}

class SideMenuRouter: SideMenuNavigationLogic {
    
    // MARK: - Properties
    
    weak var viewController: SideMenuViewController?
    
    // MARK: - SideMenuNavigationLogic
    
    func navigate() {
        
    }
}

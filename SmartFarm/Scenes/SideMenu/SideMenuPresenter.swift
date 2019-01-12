//
//  SideMenuPresenter.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

protocol SideMenuPresentationLogic {
    
    func presentMenuItems(response: SideMenuItemResponse)
}

class SideMenuPresenter: SideMenuPresentationLogic {
    
    // MARK: - Properties
    
    weak var viewController: SideMenuViewController?
    
    // MARK: - SideMenuPresentationLogic
    
    func presentMenuItems(response: SideMenuItemResponse) {
        
    }
}

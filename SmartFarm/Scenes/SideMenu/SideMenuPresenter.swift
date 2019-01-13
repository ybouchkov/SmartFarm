//
//  SideMenuPresenter.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol SideMenuPresentationLogic {
    
    func presentMenuItems(response: SideMenuItemResponse)
}

class SideMenuPresenter: SideMenuPresentationLogic {
    
    // MARK: - Properties
    
    weak var viewController: SideMenuViewController?
    
    // MARK: - SideMenuPresentationLogic
    
    func presentMenuItems(response: SideMenuItemResponse) {
        
        let menuViewModel: [SideMenuItemViewModel] = response.actions.map { action in
            var menuItem: SideMenuItemViewModel
            switch action {
            case .logo:
                menuItem = SideMenuItemViewModel(for: .logo, position: 0)
                setupLogoMenuItemViewModel(menuItem, "SmartFarm", #imageLiteral(resourceName: "smartFarmer"))
            }
            
            return menuItem
        }
        
        viewController?.displayMenuItems(items: menuViewModel)
    }
}

// MARK: Helpers

extension SideMenuPresenter {
    fileprivate func setupLogoMenuItemViewModel(_ menuItem: SideMenuItemViewModel,
                                                _ title: String,
                                                _ image: UIImage) {
        menuItem.title = title
        menuItem.image = image
    }
                                            
}

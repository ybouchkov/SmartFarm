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
                setupLogoMenuItemViewModel(menuItem, "SmartFarmApp", #imageLiteral(resourceName: "smartFarmer")) // Localized
            case .firstSectionHeader:
                menuItem = SideMenuItemViewModel(for: .firstSectionHeader, position: 1)
                setupHeaderMenuItemViewModel(menuItem, "Основни раздели") // Localized, probably for next version
            case .cowsRow:
                menuItem = SideMenuItemViewModel(for: .cowsRow, position: 2)
                setupActionMenuItemViewModel(menuItem, "Крави", #imageLiteral(resourceName: "cow_menu"))
            case .femalesRow:
                menuItem = SideMenuItemViewModel(for: .femalesRow, position: 3)
                setupActionMenuItemViewModel(menuItem, "Юнци", #imageLiteral(resourceName: "cow_female"))
            case .calfsRow:
                menuItem = SideMenuItemViewModel(for: .calfsRow, position: 4)
                setupActionMenuItemViewModel(menuItem, "Телета", #imageLiteral(resourceName: "calfs"))
            case .emptySpaceRow:
                menuItem = SideMenuItemViewModel(for: .emptySpaceRow, position: 5)
            case .secondSectionHeader:
                menuItem = SideMenuItemViewModel(for: .secondSectionHeader, position: 6)
                setupHeaderMenuItemViewModel(menuItem, "Малко повече")
            case .moreInfoRow:
                menuItem = SideMenuItemViewModel(for: .moreInfoRow, position: 7)
                setupActionMenuItemViewModel(menuItem, "Инфо", #imageLiteral(resourceName: "information"))
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
    
    fileprivate func setupHeaderMenuItemViewModel(_ menuItem: SideMenuItemViewModel,
                                                  _ sectionTitle: String) {
        menuItem.sectionTitle = sectionTitle
    }
    
    fileprivate func setupActionMenuItemViewModel(_ menuItem: SideMenuItemViewModel,
                                                  _ title: String,
                                                  _ image: UIImage) {
        menuItem.title = title
        menuItem.image = image
    }
                                            
}

//
//  SideMenuInteractor.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

protocol SideMenuBuisnessLogic {
    
    func prepareItems()
}

class SideMenuInteractor: SideMenuBuisnessLogic {
    
    // MARK: - Properties
    public var presenter: SideMenuPresentationLogic?
    
    // MARK: - SideMenuBuisnessLogic
    
    func prepareItems() {
        let menuItemActions: [SideMenuActionType] = [
            .logo,
            .firstSectionHeader,
            .cowsRow,
            .femalesRow,
            .calfsRow,
            .emptySpaceRow,
            .secondSectionHeader,
            .moreInfoRow
        ]
        
        let response = SideMenuItemResponse(actions: menuItemActions)
        presenter?.presentMenuItems(response: response)
    }
}

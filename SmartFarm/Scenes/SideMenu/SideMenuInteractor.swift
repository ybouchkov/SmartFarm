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
        
    }
}

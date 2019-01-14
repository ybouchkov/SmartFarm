//
//  SideMenuItem.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

enum SideMenuActionType {
    
    // TODO: Add the others
    case logo
    case firstSectionHeader
}

class SideMenuItem {
    
    private(set) var action: SideMenuActionType
    private(set) var position: Int
    
    init(for action: SideMenuActionType, position: Int) {
        self.action = action
        self.position = position
    }
}

/// SideMenuItem class should implement 'Equatable' protocol
/// because of the DataProvider

extension SideMenuItem: Equatable {
    
    static func == (lhs: SideMenuItem, rhs: SideMenuItem) -> Bool {
        
        return lhs.action == rhs.action && lhs.position == rhs.position
    }
}

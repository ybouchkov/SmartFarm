//
//  SideMenuDataProvider.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

struct SideMenuItemResponse {
    
    var actions: [SideMenuActionType]
}

final class SideMenuDataProvider: ArrayDataProvider<SideMenuItemViewModel> {}

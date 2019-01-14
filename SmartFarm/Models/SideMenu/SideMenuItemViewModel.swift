//
//  SideMenuViewModel.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable)
}

protocol SectionHeaderRepresentable {
    
    var sectionTitle: String? { get set }
}

protocol ActionRepresentable {
    
    var title: String? { get set }
    var image: UIImage? { get set }
}

protocol SideMenuItemRepresentable: SectionHeaderRepresentable, ActionRepresentable {}

enum SideMenuRepresentableItemFactory {
    
    static func reuseIdentifier(forMenuAction action: SideMenuActionType) -> String {
        
        switch action {
        case .logo:
            return Cells.logoCell.rawValue
        case .firstSectionHeader,
             .secondSectionHeader:
            return Cells.firstSectionHeader.rawValue
        case .cowsRow,
             .femalesRow,
             .calfsRow,
             .moreInfoRow:
            return Cells.cowsRowCell.rawValue
        case .emptySpaceRow:
            return Cells.emptySpaceCell.rawValue
        }
    }
}

class SideMenuItemViewModel: SideMenuItem, SideMenuItemRepresentable, TableViewCompatible {
    
    var title: String?
    
    var reuseIdentifier: String

    var sectionTitle: String?
    
    var image: UIImage?
    
    // MAKR: - Init
    override init(for action: SideMenuActionType, position: Int) {
        self.reuseIdentifier = SideMenuRepresentableItemFactory.reuseIdentifier(forMenuAction: action)
        super.init(for: action, position: position)
    }
}

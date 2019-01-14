//
//  EmptySpaceTableViewCell.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 14.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class EmptySpaceTableViewCell: UITableViewCell {

    // MARK: - Properties & IBOutlets
    
    @IBOutlet private weak var lineView: UIView!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()

        setup()
    }
    
    private func setup() {
        
        self.lineView.backgroundColor = UIColor.AppColour.separatorColour
    }
}

extension EmptySpaceTableViewCell: SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable) {
        // NOTE: NOT NEED FOR IMPLEMENTAION - 🔒
    }
}

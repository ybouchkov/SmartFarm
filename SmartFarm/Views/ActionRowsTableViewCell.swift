//
//  ActionRowsTableViewCell.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 14.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class ActionRowsTableViewCell: UITableViewCell {

    // MARK: - Properties & IBOutlets
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var imageIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        setup()
    }

    // MARK: - Setup
    
    private func setup() {
        self.lblTitle.textColor = UIColor.AppColour.rowsTitleColour
        self.lblTitle.font = Arsenal.regular.of(size: 18.0)
    }
}

// MARK: - SideMenuItemConfigurable

extension ActionRowsTableViewCell: SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable) {
        self.lblTitle.text = item.title
        self.imageIcon.image = item.image
    }
}

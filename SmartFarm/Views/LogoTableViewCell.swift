//
//  LogoTableViewCell.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class LogoTableViewCell: UITableViewCell {
    
    // MARK: - Properties & IBOutlets
    
    @IBOutlet private weak var logoImageView: UIImageView!
    @IBOutlet private weak var lblTitle: UILabel!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        self.contentView.backgroundColor = UIColor.AppColour.navigationBarColour
        self.lblTitle.textColor = .white
        self.lblTitle.font = Arsenal.bold.of(size: 20.0)
    }
}

// MARK: - SideMenuConfiguration

extension LogoTableViewCell: SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable) {
        self.lblTitle.text = item.title
        self.logoImageView.image = item.image
    }
}

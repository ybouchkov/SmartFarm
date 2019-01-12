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
//        self.contentView.backgroundColor = .navigationBarColour
//        self.imageView?.image = #imageLiteral(resourceName: "smartFarmer")
//        self.lblTitle.text = "SmartFarm"
    }
}

// MARK: - SideMenuConfiguration

extension LogoTableViewCell: SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable) {
        
    }
}

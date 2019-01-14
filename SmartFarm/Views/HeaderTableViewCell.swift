//
//  HeaderTableViewCell.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 14.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    private func setup() {
        lblTitle.textColor = UIColor.AppColour.sectionTitleColour
        lblTitle.font = Arsenal.bold.of(size: 18.0)
    }
}

extension HeaderTableViewCell: SideMenuItemConfigurable {
    
    func configure(item: SideMenuItemRepresentable) {
        // NOTE: Do something if need it. In this case - nope 🔒
        lblTitle.text = item.sectionTitle
    }
}

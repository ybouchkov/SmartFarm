//
//  AboutViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 15.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    // MARK: - IBOutlets & Properties
    
    @IBOutlet private weak var versionView: UIView!
    @IBOutlet private weak var authorView: UIView!
    @IBOutlet private weak var lblVersion: UILabel!
    @IBOutlet private weak var lblAuthor: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
}

typealias AboutUI = AboutViewController

extension AboutUI {
    private func setUI() {
        lblVersion.text = "SmartFarmApp: ver. 1.0"
        lblVersion.textColor = .white
        lblVersion.font = Arsenal.boldItalic.of(size: 20.0)
        
        lblAuthor.textColor = .white
        lblAuthor.text = "YB"
        lblAuthor.font = Arsenal.boldItalic.of(size: 25.0)
        
        versionView.backgroundColor = UIColor.AppColour.primaryColour
        authorView.backgroundColor = UIColor.AppColour.primaryColour
    }
}

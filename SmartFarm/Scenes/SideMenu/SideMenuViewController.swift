//
//  SideMenuViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit
import SideMenu

protocol SideMenuDisplayLogic {
    
    func displayMenuItems()
}

class SideMenuViewController: UIViewController, SideMenuDisplayLogic {
    
    // MARK: - Properties & IBOutlets
    
    @IBOutlet private weak var tableView: UITableView!
    
    public var router: SideMenuNavigationLogic?
    public var interactor: SideMenuBuisnessLogic?
    
    

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    // MARK: - SideMenuDisplayLogic
    
    func displayMenuItems() {
        
    }
    
    // MARK: - Setup
    
    private func setup() {
        SideMenuConfiguration.shared.config(viewController: self)
    }
}

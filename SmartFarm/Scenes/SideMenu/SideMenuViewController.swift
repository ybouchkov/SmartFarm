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

class SideMenuViewController: UITableViewController, SideMenuDisplayLogic {
    
    // MARK: - Properties & IBOutlets
    
    public var router: SideMenuNavigationLogic?
    public var interactor: SideMenuBuisnessLogic?
    
    var menuProvider = SideMenuDataProvider(rows: [])
    
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

// MARK: - UITableViewDataSource

extension SideMenuViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return menuProvider.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuProvider.numberOfItems(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

// MARK: - UITableViewController

extension SideMenuViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // use router here ...
    }
}

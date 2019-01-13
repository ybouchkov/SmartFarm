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
    
    func displayMenuItems(items: [SideMenuItemViewModel])
}

class SideMenuViewController: UITableViewController, SideMenuDisplayLogic {
    
    // MARK: - Properties & IBOutlets
    
    public var router: SideMenuNavigationLogic?
    public var interactor: SideMenuBuisnessLogic?
    
    var menuProvider = SideMenuDataProvider(rows: [])
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareItems()
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
    
    func displayMenuItems(items: [SideMenuItemViewModel]) {
        self.menuProvider.update(rows: items)
        tableView.reloadData()
    }
    
    private func prepareItems() {
        interactor?.prepareItems()
        tableView.tableFooterView = UIView() // empty rows at the end
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
        let viewModel = menuProvider[indexPath]
        guard let reuseIdentifier = viewModel?.reuseIdentifier else { return UITableViewCell() }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) else {
            fatalError("Slide Menu Cell Not Found -- ReuseIdentifier: \(reuseIdentifier)")
        }
        guard let configurableCell = cell as? SideMenuItemConfigurable else {
            fatalError("Slide Menu Cell Must Be SlideMenuItemConfigurable")
        }
        
        configurableCell.configure(item: viewModel!)
        return cell
    }
}

// MARK: - UITableViewController

extension SideMenuViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // use router here ...
    }
}

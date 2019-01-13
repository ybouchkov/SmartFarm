//
//  CowsViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 10.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol CowsViewDisplayLogic {
    // display logic here
}

class CowsViewController: UIViewController, CowsViewDisplayLogic {

    // MARK: - Properties & IBOutlets
    
    var interactor: CowsViewBuisnessLogic?
    var router: CowsViewNavigationLogic?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Крави"
        lineNavigationItems()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
        
        CowsViewConfiguration.shared.configurate(viewController: self)
    }
    
    private func lineNavigationItems() {
        self.navigationItem.leftBarButtonItem = menuBarButtoItem
    }
}

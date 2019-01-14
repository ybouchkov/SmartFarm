//
//  FemalesViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 14.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol FemalesViewDisplayLogic {
    // display list
}

class FemalesViewController: UIViewController, FemalesViewDisplayLogic {

    // MARK: - Properties & IBOutlets
    
    var interactor: FemalesViewBuisnessLogic?
    var router: FemalesViewNavigationLogic?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Юнци"
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
        
        FemalesViewConfiguration.shared.configurate(viewController: self)
    }
}

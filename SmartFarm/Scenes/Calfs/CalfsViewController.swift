//
//  CalfsViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 15.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

protocol CalfsViewDispalyLogic {
    // display
}

class CalfsViewController: UIViewController, CalfsViewDispalyLogic {

    // MARK: - Properties & IBOutlets
    
    var router: CalfsViewNavigationLogic?
    var interactor: CalfsViewBuisnessLogic?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Телета"
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
        
        CalfsViewConfiguration.shared.configurate(viewController: self)
    }
    
    // MARK: - CalfsViewDispalyLogic
}

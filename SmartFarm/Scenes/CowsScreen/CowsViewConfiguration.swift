//
//  CowsViewConfiguration.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 10.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

class CowsViewConfiguration {
    
    // MARK: - Singleton
    static public var shared = CowsViewConfiguration()
    
    // MARK: - Init
    private init() {}
    
    // MARK: - Configuration Logic
    public func configurate(viewController: CowsViewController) {
        let interactor = CowsViewInteractor()
        let presenter = CowsViewPresenter()
        let router = CowsViewRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        presenter.viewController = viewController
        interactor.presenter = presenter
        router.viewController = viewController
    }
}

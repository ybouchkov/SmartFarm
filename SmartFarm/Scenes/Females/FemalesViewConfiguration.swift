//
//  FemalesViewConfiguration.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 14.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

class FemalesViewConfiguration {
    
    // MARK: - Singleton
    
    static var shared = FemalesViewConfiguration()
    
    // MARK: - Init
    
    private init () {}
    
    // MARK: - Setup
    
    public func configurate(viewController: FemalesViewController) {
        let interactor = FemalesViewInteractor()
        let presenter = FemalesViewPresenter()
        let router = FemalesViewRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
    
}

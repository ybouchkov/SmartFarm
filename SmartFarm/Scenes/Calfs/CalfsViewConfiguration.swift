//
//  CalfsViewConfiguration.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 15.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import Foundation

class CalfsViewConfiguration {
 
    // MARK: - Singleton
    
    static var shared = CalfsViewConfiguration()
    
    // MARK: - Init
    
    private init() {}
    
    // MARK: - Configuration
    
    func configurate(viewController: CalfsViewController) {
        
        let interactor = CalfsViewInteractor()
        let presenter = CalfsViewPresenter()
        let router = CalfsViewRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
}

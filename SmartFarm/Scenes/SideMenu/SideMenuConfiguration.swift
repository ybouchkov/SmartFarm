//
//  SideMenuConfiguration.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

class SideMenuConfiguration {
    
    // MARK: - Init
    
    private init() { }
    
    // MARK: - Singleton
    
    static var shared = SideMenuConfiguration()
    
    // MARK: - Configuration
    
    public func config(viewController: SideMenuViewController) {
        let interactor = SideMenuInteractor()
        let presenter = SideMenuPresenter()
        let router = SideMenuRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
}

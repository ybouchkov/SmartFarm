//
//  NavigationViewController.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit
import SideMenu

class NavigationViewController: UINavigationController {

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    // MARK: - Config the navigation
    
    private func setupNavigation() {
        let menuScene = SideMenuViewController.instantiateFrom(appStoryboard: .menu)
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: menuScene)
        menuLeftNavigationController.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view,
                                                                      forMenu: .left)
        SideMenuManager.default.menuWidth = 0.7 * UIScreen.main.bounds.width
        // Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false
        // Keep right part of the screen visible
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        /* If a view controller already in the stack is of the same class as the pushed view controller,
         the stack is instead popped back to the existing view controller.
         */
        SideMenuManager.defaultManager.menuPushStyle = .popWhenPossible
    }
}

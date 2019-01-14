//
//  UIViewController+.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit
import SideMenu

extension UIViewController {
    
    /// ViewController's StoryboardID title
    static var storyboardID: String {
        return "\(self)"
    }
    
    /// Instantiate View Controller
    /// -   Usage:
    /// -   let vcScene = (VC)Scene.instantiate(fromAppStoryboard: .Storyboard)
    static func instantiateFrom(appStoryboard: Storyboard) -> Self {
        return appStoryboard.viewController(from: self)
    }
}

extension UIViewController {
    
    @objc
    func newViewDidLoad() {
        self.newViewDidLoad()
        
        // Remove the title frin Back
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "",
                                                           style: .plain,
                                                           target: nil,
                                                           action: nil)
        
        self.navigationItem.leftBarButtonItem = menuBarButtoItem
    }
    
    static func swizzleViewDidLoad() {
        // !!! Make sure This isn't a subclass of UIViewController,
        // So that It applies to all UIViewController childs
        if self != UIViewController.self {
            return
        }
        
        let _: () = {
            let originalSelector = #selector(UIViewController.viewDidLoad)
            let swizzledSelector = #selector(UIViewController.newViewDidLoad)
            let originalMethod = class_getInstanceMethod(self, originalSelector)
            let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
            method_exchangeImplementations(originalMethod!, swizzledMethod!)
        }()
    }
    
    /// Custom hamburger menu btn
    var menuBarButtoItem: UIBarButtonItem {
        let button = UIButton(type: .custom)
        button.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        button.addTarget(self,
                         action: #selector(menuBtnPressed),
                         for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
    
    // MARK: - Actions
    @objc
    fileprivate func menuBtnPressed() {
        guard let menuLeftNavigationController = SideMenuManager.default.menuLeftNavigationController else {
            return
        }
        present(menuLeftNavigationController,
                animated: true,
                completion: nil)
    }
}

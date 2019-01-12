//
//  ThemeManager.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 12.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

final class ThemeManager {
    
    // MARK: - Singleton
    static var shared = ThemeManager()
    
    // MARK: - Init
    private init() {}
    
    var theme: Theme = DefaultTheme() {
        didSet {
            applyTheme()
        }
    }
    
    // MARK: - Apply Theme
    public func applyTheme() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.barTintColor = theme.navigationColour
        navigationBar.tintColor = theme.navigationTitleColour
        navigationBar.isTranslucent = theme.navigationBarTranslucent
        navigationBar.barStyle = .blackTranslucent
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: theme.navigationTitleColour,
            NSAttributedString.Key.font: theme.navigationTitleFont
        ]
        
        listeners.allObjects.forEach { $0.style(with: theme) }
    }

    // MARK: - Listeners
    
    private var listeners = NSHashTable<Themeable>.weakObjects()
    
    func applyTheme<T: Themeable>(to themeable: T) {
        guard !listeners.contains(themeable) else {
            return
        }
        
        listeners.add(themeable)
        
        themeable.style(with: theme)
    }
}

// Helpers

@objc
protocol Themeable: class {
    
    func style(with theme: Theme)
    
}

@objc
protocol Theme {
    
    var navigationColour: UIColor { get }
    var navigationTitleColour: UIColor { get }
    var navigationBarTranslucent: Bool { get }
    var navigationTitleFont: UIFont { get }
}

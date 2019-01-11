//
//  UIFont + Arsenal.swift
//  SmartFarm
//
//  Created by Yani Buchkov on 11.01.19.
//  Copyright © 2019 Yani Buchkov. All rights reserved.
//

import UIKit

enum ArsenalStyle: String {
    
    case regular
    case bold
    case boldItalic
    case italic
    
    func fontName() -> String {
        switch self {
        case .bold:
            return "Arsenal-Bold"
        case .boldItalic:
            return "Arsenal-BoldItalic"
        case .italic:
            return "Arsenal-Italic"
        case .regular:
            return "Arsenal-Regular"
        }
    }
    
    func fontFileName() -> String {
        return fontName()
    }
    
    func fontFamilyName() -> String {
        return "Arsenal"
    }
}

extension UIFont {
    
    class func montserrat(ofSize fontSize: CGFloat, style: ArsenalStyle) -> UIFont? {
        loadMontserratFont(ofStyle: style)
        return UIFont(name: style.fontName(), size: fontSize)
    }
    
    private class func loadMontserratFont(ofStyle style: ArsenalStyle) {
        if UIFont.fontNames(forFamilyName: style.fontFamilyName()).contains(style.fontName()) {
            return
        }
        
        FontLoader.loadFont(style.fontFileName())
    }
}

// MARK: - Helpers

class FontLoader {
    
    class func loadFont(_ name: String) {
        guard
            let fontURL = URL.fontURL(for: name),
            let data = try? Data(contentsOf: fontURL),
            let provider = CGDataProvider(data: data as CFData),
            let font = CGFont(provider)
            else { return }
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            guard let nsError = error?.takeUnretainedValue() as AnyObject as? NSError else {
                return
            }
            NSException(name: NSExceptionName.internalInconsistencyException,
                        reason: errorDescription as String,
                        userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
    
}

extension URL {
    
    static func fontURL(for fontName: String) -> URL? {
        let bundle = Bundle(for: FontLoader.self)
        
        if let fontURL = bundle.url(forResource: fontName, withExtension: "ttf") {
            return fontURL
        }
        
        return nil
    }
    
}



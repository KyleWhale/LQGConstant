//
//  LQGConstant.swift
//  LQGConstant
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import Foundation
import UIKit

public func LQGDebugLog(_ format: String, _ args: CVarArg...) {
#if DEBUG
    print("《↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓》\n" +
          "file:\(NSString(utf8String: #file)?.lastPathComponent.utf8)\n" +
          "line:\(#line)\n" +
          "func:\(NSString(utf8String: #function)?.lastPathComponent.utf8)\n" +
          "info:\n\(String(format: format, args))\n" +
          "《↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑》")
#endif
}

@objcMembers
public class LQGInfo: NSObject {
    
    public static let name = Bundle.main.infoDictionary!["CFBundleDisplayName"]
    
    public static let bundleId = Bundle.main.infoDictionary!["CFBundleIdentifier"]
    
    public static let shortVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"]
    
    public static let build = Bundle.main.infoDictionary!["CFBundleVersion"]
    
}

@objcMembers
public class LQGSize: NSObject {
    
    public static let scale = UIScreen.main.scale
    
    public static var bounds: CGRect { UIScreen.main.bounds }
    
    public static var size: CGSize { UIScreen.main.bounds.size }
    
    public static var width: CGFloat { UIScreen.main.bounds.size.width }
    
    public static var height: CGFloat { UIScreen.main.bounds.size.height }
    
    public static var widthScale: CGFloat { UIScreen.main.bounds.size.width / 390.0 }
    
    public static let statusBarHeight: CGFloat = {
        if #available(iOS 13.0, *) {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let statusBarManager = windowScene.statusBarManager {
                return statusBarManager.statusBarFrame.height
            }
        }
        return UIApplication.shared.statusBarFrame.height
    }()
    
    public static let navigationBarHeight: CGFloat = 44.0 + statusBarHeight
    
    public static let bottomSafeHeight: CGFloat = {
        if #available(iOS 13.0, *) {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first {
                return window.safeAreaInsets.bottom
            }
        } else if #available(iOS 11.0, *) {
            if let window = UIApplication.shared.windows.first {
                return window.safeAreaInsets.bottom
            }
        }
        return 0.0
    }()
    
    public static let tabBarHeight: CGFloat = 49.0 + bottomSafeHeight
    
    public static let onePX = 1.0 / scale
    
    public static var isDark: Bool = {
        if #available(iOS 13.0, *) {
            return UITraitCollection.current.userInterfaceStyle == .dark
        }
        return false
    }()
    
}

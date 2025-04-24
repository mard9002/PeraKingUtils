//
//  RootWindowSwitch.swift
//  PeraKing
//
//  Created by Tingyu on 2025/4/22.
//

import UIKit


@objc class RootWindowSwitch: NSObject {
    @objc static func switchRootHomeViewController() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else {
            return
        }
        let homeViewController = PeraKingHomeViewController()
        let navigationController = BaseNavigationController(rootViewController: homeViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    @objc static func switchRootLoginViewController() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else {
            return
        }
        let homeViewController = LoginViewController()
        let navigationController = BaseNavigationController(rootViewController: homeViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}


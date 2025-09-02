//
//  SceneDelegate.swift
//  HikingJournal
//
//  Created by Prakash Acharya on 9/1/25.
//

import HotwireNative
import UIKit

private let rootURL = URL(string: "http://localhost:3000")!

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    private let navigator = Navigator(configuration: .init(
        name: "main",
        startLocation: rootURL))
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        window?.rootViewController = navigator.rootViewController
        navigator.start()
    }
    
}


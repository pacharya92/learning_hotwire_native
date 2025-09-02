//
//  SceneDelegate.swift
//  HikingJournal
//
//  Created by Prakash Acharya on 9/1/25.
//

import HotwireNative
import UIKit

let baseURL = URL(filePath: "http://localhost:3000")!

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    private let navigator = Navigator(configuration: .init(
        name: "main",
        startLocation: baseURL.appending(path: "hikes")
    ))
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions) {
            window?.rootViewController = navigator.rootViewController
            navigator.start()
    }
}

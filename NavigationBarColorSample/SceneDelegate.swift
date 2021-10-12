//
//  SceneDelegate.swift
//  NavigationBarColorSample
//
//  Created by 清水智貴 on 2020/06/18.
//  Copyright © 2020 tomotaka.com. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        
        // 全てのNavigationControllerのそれぞれの色を変更する場合ここに書く
        // 個別に色を変えたい場合、そのViewControllerにコードを書くことで個別に色を変えられる
        // ナビゲージョンアイテムの文字色
        UINavigationBar.appearance().tintColor = UIColor.red
        
        UINavigationBar.appearance().titleTextAttributes =
            // ナビゲーションバーのタイトルの文字色
            [.foregroundColor: UIColor.blue,
             // フォントの種類
             .font: UIFont(name: "Times New Roman",
                           // フォントサイズ
                           size: 27)!]
        
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor.green
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        } else {
            // ナビゲーションバーの背景色
            UINavigationBar.appearance().barTintColor = UIColor.green
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by Tuychiev Toir on 21/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Create a new window for the window property that
        // comes standard on the AppDelegate class. The UIWindow
        // is where all view controllers and views appear.
        // window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create a new instance of ViewController
        // let mainViewController = ViewController()
        
        // Set the initial View Controller to our instance of ViewController
        // window?.rootViewController = mainViewController
        
        // Present the window
        // window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


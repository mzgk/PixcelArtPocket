//
//  AppDelegate.swift
//  Pixel
//
//  Created by Mizugaki on 2018/04/27.
//  Copyright © 2018年 edu.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let barTintColor = UIColor.init(red: 0.0 / 255.0, green: 137.0 / 255.0, blue: 123.0 / 255.0, alpha: 1.0)

        // NavigationBar : UINavigationControllerを継承したサブクラスNavigationControllerを作成し、変更の影響を自分のみにする（ImagePicker等に影響しない）
        UINavigationBar.appearance(whenContainedInInstancesOf: [NavigationController.self]).barTintColor = barTintColor
        UINavigationBar.appearance(whenContainedInInstancesOf: [NavigationController.self]).tintColor = .white
        UINavigationBar.appearance(whenContainedInInstancesOf: [NavigationController.self]).titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]

        // Toolbar
        UIToolbar.appearance(whenContainedInInstancesOf: [NavigationController.self]).barTintColor = barTintColor
        UIToolbar.appearance(whenContainedInInstancesOf: [NavigationController.self]).tintColor = .white

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


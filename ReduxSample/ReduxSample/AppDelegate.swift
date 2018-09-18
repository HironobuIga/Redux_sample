//
//  AppDelegate.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/16.
//  Copyright © 2018年 iganin. All rights reserved.
//

import UIKit
import ReSwift

let mainStore = Store<AppState>(reducer: appReducer, state: nil)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}


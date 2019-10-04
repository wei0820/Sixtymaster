//  AppDelegate.swift
//  Sixtymaster
//
//  Created by  JackPan on 2019/2/5.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import GoogleMobileAds
import Firebase
import GoogleSignIn
import FacebookCore


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate , GIDSignInDelegate {
    var window: UIWindow?

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            print(error)
            return
        }
     
    }
    
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
     
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        FirebaseApp.configure()
        
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
             GIDSignIn.sharedInstance().delegate = self
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        return true
    }
    

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
      return ApplicationDelegate.shared.application(
        application,
        open: url,
        sourceApplication: sourceApplication,
        annotation: annotation
      )
    }
    @available(iOS 9.0, *)
    func application(_ application: UIApplication,
                     open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
      return ApplicationDelegate.shared.application(application, open: url, options: options)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
      AppEvents.activateApp()
    }
  
}


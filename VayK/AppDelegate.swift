//
//  AppDelegate.swift
//  VayK
//
//  Created by Matthew Goldspink on 8/26/15.
//  Copyright (c) 2015 mgoldspink. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Parse.setApplicationId("", clientKey:"")
        PFTwitterUtils.initializeWithConsumerKey("", consumerSecret:"")
        PFFacebookUtils.initializeFacebookWithApplicationLaunchOptions(launchOptions);
        return true
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        FBSDKAppEvents.activateApp()
    }
    
}


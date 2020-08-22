//
//  ExtensionDelegate.swift
//  FlickTypeKit Sample WatchKit Extension
//
//  Created by Kosta Eleftheriou on 12/31/18.
//  Copyright © 2018 Kpaw. All rights reserved.
//

import WatchKit
import FlickTypeKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
        FlickType.returnURL = URL(string: "https://www.flicktype.com/flicktype")
    }

    func applicationDidBecomeActive() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

}

extension ExtensionDelegate {
  
  func handle(_ userActivity: NSUserActivity) {
    if FlickType.handle(userActivity) { return }
    print("Received non-FlickType activity \(userActivity)")
  }
  
}

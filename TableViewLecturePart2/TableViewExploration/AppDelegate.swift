//
//  AppDelegate.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    /* Create an instance of our cell 1 model controller - we do this in AppDelegate since it is a singleton so we can be assured that only one instance will be created. this means we can be assured that when we access the cache it isn't some arbitrary instance or cache
    
        AppDelegate -> ModelController -> Model -> ModelController 
        ViewController -> ModelController -> Model -> ModelController -> ViewController
    
        Delegation:
        ViewController passes block to ModelContoller which consumes block and assigns properties from the model into the block
    
        Any functions/vars in AppDelegate are accessible to all parts of App => equivalent of global vars funcs
    */
    let cell1ModelController = Cell1ModelController()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        populateModels()
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    //Here we tack this on to AppDelegate but not generally how we would really want this done  - network operation -> modelController
    func populateModels() {
        
        let modelTitles = [("Title1","SubTitle1"),("Title2","SubTitle2"),("Title3","SubTitle3"),("Title4","SubTitle4"),("Title5","SubTitle5"),("Title6","SubTitle6")]
        
        for modelTitle in modelTitles {
            cell1ModelController.createAndStoreModelWithTitle(modelTitle.0, andSubtitle: modelTitle.1)
        }
    }


}


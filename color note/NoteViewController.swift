//
//  ViewController.swift
//  color note
//
//  Created by benmathes on 8/3/15.
//  Copyright (c) 2015 B&B Labs. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase


class NoteViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadFacebookView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // load the facebook login button
    func loadFacebookView() {
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logInWithReadPermissions(
            ["public_profile", "email"],
            handler: { (facebookResult, facebookError) -> Void in
                if facebookError != nil {
                    println("Facebook login failed. Error \(facebookError)")
                } else if facebookResult.isCancelled {
                    println("Facebook login was cancelled.")
                } else {                    
                    let accessToken = FBSDKAccessToken.currentAccessToken().tokenString
                    FBase.ref.authWithOAuthProvider(
                        "facebook",
                        token: accessToken,
                        withCompletionBlock: { error, authData in
                            if error != nil {
                                println("Login failed. \(error)")
                            } else {
                                println("Logged in! \(authData)")
                            }
                        }
                    )
                }
            }
        )
      
        var loginButton = FBSDKLoginButton()
        loginButton.readPermissions = ["public_profile", "email"]
        loginButton.center = self.view.center
        loginButton.delegate = self
        self.view.addSubview(loginButton)
        
        // position the login button
        /*
        CGRect screenRect = [[UIScreen mainScreen] bounds]
        // create a button that's the width of the screen (with 4 padding) and has a height of 50
        // move the button to the bottom of the screen (screen height - button height (50))
        loginView.frame = CGRectMake(4, screenRect.size.height-50, screenRect.size.width-(4*2), 50)
        // set the view controller as the delegate
        loginView.delegate = self
        [self.view addSubview:loginView]
        */
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if error == nil {
            println("Login complete.")
            self.performSegueWithIdentifier("showNew", sender: self)
        }
        else {
            println(error.localizedDescription)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        println("User logged out...")
    }


}


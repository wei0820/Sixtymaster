//
//  MemberController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/9/26.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class MemberController: UIViewController ,GIDSignInDelegate   {


    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            // ...
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
            overrideUserInterfaceStyle = .light
            
        }
        // Do any additional setup after loading the view.'
        // Google Sing in Login
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID

        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().delegate = self
        

    
    }


    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

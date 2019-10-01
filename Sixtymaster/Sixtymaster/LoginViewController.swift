//
//  LoginViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/10/1.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class LoginViewController: UIViewController ,GIDSignInDelegate{
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!){
           if let err = error {
               print ("failed to log into Google", err)
               return
           }
           
           guard let authentication = user.authentication else {return}
           let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
           Auth.auth().signIn(with: credential) { (user, error) in
               if let error = error {
                   print(error)
                   return
               }
               self.toggleAuthUI()
               
           }
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
                overrideUserInterfaceStyle = .light
            } else {
                // Fallback on earlier versions
                overrideUserInterfaceStyle = .light

            }
        
        // Automatically sign in the user.
              GIDSignIn.sharedInstance()?.presentingViewController = self
              
              GIDSignIn.sharedInstance()?.restorePreviousSignIn()
              GIDSignIn.sharedInstance().delegate = self

        // Do any additional setup after loading the view.
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

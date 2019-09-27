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
        if error != nil{
            print(error)
            return
        }else{
            guard let authentication = user.authentication else { return }
            let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                           accessToken: authentication.accessToken)
            Auth.auth().signIn(with: credential) { (authResult, error) in
                if let error = error {
                    // ...
                    return
                }
                // User is signed in
                // ...
                
            }
        }
        
        
    }
    
    @IBOutlet weak var signOutButton: UIButton!
    @IBAction func userLogOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
           // [START_EXCLUDE silent]
           toggleAuthUI()
    }
    
    @IBOutlet var logoutbtn: UIView!
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
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        toggleAuthUI()
        
    }
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    func toggleAuthUI() {
        if let _ = GIDSignIn.sharedInstance()?.currentUser?.authentication {
            // Signed in
            signInButton.isHidden = true
            signOutButton.isHidden = false

            print(GIDSignIn.sharedInstance()?.currentUser?.userID)
            print(GIDSignIn.sharedInstance()?.currentUser?.profile.email)
            print(GIDSignIn.sharedInstance()?.currentUser?.profile.imageURL(withDimension: 400))
            
        } else {
            signInButton.isHidden = false
            signOutButton.isHidden = true

        }
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

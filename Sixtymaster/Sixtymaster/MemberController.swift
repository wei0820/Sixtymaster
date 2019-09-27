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
    
    @IBOutlet weak var mIdLabel: UILabel!
    @IBOutlet weak var mMaliLabel: UILabel!
    @IBOutlet weak var mImg: UIImageView!
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
    @IBOutlet weak var signOutButton: UIButton!
    @IBAction func userLogOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        // [START_EXCLUDE silent]
        toggleAuthUI()
    }
    
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
        
        
        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        GIDSignIn.sharedInstance().delegate = self
        
        
        
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
            let id = GIDSignIn.sharedInstance()?.currentUser?.userID
            let mail = GIDSignIn.sharedInstance()?.currentUser?.profile.email
            mIdLabel.text = id
            mMaliLabel.text = mail
            
            
            DispatchQueue.global(qos: .userInitiated).async {
                let imageData:NSData = NSData(contentsOf: (GIDSignIn.sharedInstance()?.currentUser?.profile.imageURL(withDimension: 400))!)!

                // When from background thread, UI needs to be updated on main_queue
               DispatchQueue.main.async {
                    let image = UIImage(data: imageData as Data)
                self.mImg.image = image
                }
            }

        } else {
            signInButton.isHidden = false
            signOutButton.isHidden = true
            mIdLabel.text = ""
                 mMaliLabel.text = ""
            mImg.image = nil
            
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

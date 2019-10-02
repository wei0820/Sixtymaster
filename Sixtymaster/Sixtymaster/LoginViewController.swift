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
import FacebookLogin
import FacebookCore

class LoginViewController: UIViewController, LoginButtonDelegate {
    
    @IBAction func GusetLogin(_ sender: Any) {
    }
    
    @IBAction func fblogin(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn(permissions: [.publicProfile, .userFriends,.email], viewController: self) { result in
            self.loginManagerDidComplete(result)
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
//
//
//        let button = FBLoginButton(permissions: [.publicProfile,.email,
//        ])
//        button.delegate = self
//        button.center = view.center
//        view.addSubview(button)
        getLoginStatus()
    
        
        
        //
        //        // Automatically sign in the user.
        //        GIDSignIn.sharedInstance()?.presentingViewController = self
        //
        //        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        //        GIDSignIn.sharedInstance().delegate = self
        // Do any additional setup after loading the view.
    }
    
    func getLoginStatus(){
        
        if let accessToken = AccessToken.current {
                let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
                let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                appDelegate.window?.rootViewController = HomeVc
                // User is logged in, use 'accessToken' here.
            let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                  
                  Auth.auth().signIn(with: credential) { (authResult, error) in
                    if let error = error {
                      // ...
                      return
                    }
                    // User is signed in
                    print("==============")

                    print(accessToken.tokenString)

                    print( Auth.auth().currentUser?.displayName)
                    print( Auth.auth().currentUser?.photoURL)
                    print("==============")

            }
            

      


            
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
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        print("Did complete login via LoginButton with result \(String(describing: result)) " +
            "error\(String(describing: error))")
        if let error = error {
          print(error.localizedDescription)
          return
        }
        getLoginStatus()
        
        
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("Did logout via LoginButton")
    }
    func loginManagerDidComplete(_ result: LoginResult) {
      switch result {
      case .cancelled: break
      case .failed(let error): break
      case .success(let grantedPermissions, _, _):
        getLoginStatus()
        break
        

      }
    }
    
    
}





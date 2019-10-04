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

class LoginViewController: UIViewController {
    @IBAction func phoneLogin(_ sender: Any) {
        phoneLogin()
    }
    let userDefaults = UserDefaults.standard
    @IBOutlet weak var phone: UIButton!
    
    @IBAction func GusetLogin(_ sender: Any) {
        Auth.auth().signInAnonymously() { (authResult, error) in
            if let error = error {
                // ...
                return
            }
            // ...
            guard let user = authResult?.user else { return }
            let isAnonymous = user.isAnonymous  // true
            let uid = user.uid
            self.userDefaults.set(uid, forKey: "userID")
            let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                      let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
                      let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                      appDelegate.window?.rootViewController = HomeVc
        }
        
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
        getLoginStatus()
//        phoneLogin()
 
    }
    
    func getLoginStatus(){
        if((userDefaults.value(forKey: "userID")) != nil){
            let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                               let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
                               let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                               appDelegate.window?.rootViewController = HomeVc
            
        }else{
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
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func loginManagerDidComplete(_ result: LoginResult) {
        switch result {
        case .cancelled: break
        case .failed(let error): break
        case .success(let grantedPermissions, _, _):
            getLoginStatus()
            break
            
            
        }
    }   
    func phoneLogin(){
        let controller = UIAlertController(title: "登入", message: "請輸入你在 B12 星球的電話和密碼", preferredStyle: .alert)
        controller.addTextField { (textField) in
           textField.placeholder = "電話"
           textField.keyboardType = UIKeyboardType.phonePad
        }
        controller.addTextField { (textField) in
           textField.placeholder = "驗證碼"
           textField.isSecureTextEntry = true
        }
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
           let phone = controller.textFields?[0].text
           let password = controller.textFields?[1].text
            PhoneAuthProvider.provider().verifyPhoneNumber(phone!, uiDelegate: nil) { (verificationID, error) in
                          if let error = error {
                            return
                          }
                          // Sign in using the verificationID and the code sent to the user
                          // ...
                controller.textFields?[1].isHidden = true

                        }
                        Auth.auth().languageCode = "tw";
           print(phone, password)
        }
        controller.addAction(okAction)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        present(controller, animated: true, completion: nil)

    }
    
    
}





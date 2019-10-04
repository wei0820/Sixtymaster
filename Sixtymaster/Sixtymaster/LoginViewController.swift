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

class LoginViewController: UIViewController , UITextFieldDelegate {
    var show = true
    @IBAction func phoneLogin(_ sender: Any) {
        if show {
            
            isShow()
            show = false
            
        }else{
            isNoShow()
            show = true
            
        }
        
    }
    let userDefaults = UserDefaults.standard
    
    @IBAction func GusetLogin(_ sender: Any) {
        Auth.auth().signInAnonymously() { (authResult, error) in
            if let error = error {
                self.getError(S: error.localizedDescription)

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
        setTextField()
        isNoShow()
        
    }
    
    @IBAction func codelogin(_ sender: Any) {
        let verificationID :String = UserDefaults.standard.string(forKey: "authVerificationID")!
        let verificationCode = msmsCode.text!
        
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationID,
            verificationCode: verificationCode)
        
        Auth.auth().signIn(with: credential) { (authResult, error) in
            if let error = error {
                self.getError(S: error.localizedDescription)

                // ...
                return
            }
            // User is signed in
            guard let user = authResult?.user else { return }
            let uid = user.uid
            self.userDefaults.set(uid, forKey: "userID")
            let stroyboard = UIStoryboard(name: "Main", bundle: nil);
            let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
            let appDelegate = UIApplication.shared.delegate as! AppDelegate;
            appDelegate.window?.rootViewController = HomeVc
            // ...
        }
        
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
                        self.getError(S: error.localizedDescription)

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
    
    @IBOutlet weak var mphone: UITextField!
    @IBOutlet weak var msmsCode: UITextField!
    @IBAction func getcode(_ sender: Any) {
        if(mphone != nil && mphone.text?.count != 0 ){
            getCode(phone: mphone.text!)
            
        }
    }

    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    func setTextField(){
        mphone.placeholder = "請輸入電話：+886912345678"
        mphone.borderStyle = .roundedRect
        mphone.returnKeyType = .done
        mphone.delegate = self
        mphone.clearButtonMode = .always  //一直显示清除按钮
        msmsCode.placeholder = "請輸入驗證碼"
        msmsCode.borderStyle = .roundedRect
        msmsCode.clearButtonMode = .always  //一直显示清除按钮
        msmsCode.textContentType = .oneTimeCode
    }
    func isShow(){
        mphone.isHidden = false
        msmsCode.isHidden = false
        btn_1.isHidden = false
        btn_2.isHidden = false
    }
    func isNoShow(){
        mphone.isHidden = true
        msmsCode.isHidden = true
        btn_1.isHidden = true
        btn_2.isHidden = true
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // 結束編輯 把鍵盤隱藏起來
        self.view.endEditing(true)
        
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func getCode(phone :String){
        PhoneAuthProvider.provider().verifyPhoneNumber(phone, uiDelegate: nil) { (verificationID, error) in
            if let error = error {
                print("error")
                self.getError(S: error.localizedDescription)

                print(error.localizedDescription)
                
                return
            }
            // Sign in using the verificationID and the code sent to the user
            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
            
            
            // ...
            
        }
        Auth.auth().languageCode = "tw";
        print(phone)
    }
    
    func getError(S :String){
        let controller = UIAlertController(title: "發生錯誤", message: S, preferredStyle: .alert)
                   let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                   controller.addAction(okAction)
                   present(controller, animated: true, completion: nil)
    }
}







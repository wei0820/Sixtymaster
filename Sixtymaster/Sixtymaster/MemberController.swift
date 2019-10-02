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
import FacebookCore
import FacebookLogin
class MemberController: UIViewController{
    let userDefaults = UserDefaults.standard
    
    @IBOutlet weak var mIdLabel: UILabel!
    @IBOutlet weak var mMaliLabel: UILabel!
    @IBOutlet weak var mImg: UIImageView!
    
    @IBOutlet weak var signOutButton: UIButton!
    @IBAction func userLogOut(_ sender: Any) {
        let loginManager = LoginManager()
        userDefaults.set(nil, forKey: "userID")
        
        loginManager.logOut()
        
        let stroyboard = UIStoryboard(name: "Main", bundle: nil);
        let HomeVc = stroyboard.instantiateViewController(withIdentifier: "login")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate;
        appDelegate.window?.rootViewController = HomeVc
        
        // [START_EXCLUDE silent]    }
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
        
        
        // Automatically sign in the user
        
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

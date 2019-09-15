//
//  OneController.swift
//  Sixtymaster
//
//  Created by  JackPan on 2019/2/5.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class OneController: UIViewController,GADBannerViewDelegate , UITabBarDelegate,UIActionSheetDelegate{
    var adBannerView: GADBannerView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after
        setAdBanner()

    }
    @IBOutlet weak var tabbar_item_1: UITabBarItem!
    @IBOutlet weak var tabbar_item_2: UITabBarItem!
    @IBOutlet weak var tabbar_item_3: UITabBarItem!
    @IBOutlet weak var tabbar_item_4: UITabBarItem!
    var alert : UIActionSheet?
    func setAdBanner(){
        let id = "ca-app-pub-7019441527375550/3838969590"
        adBannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        adBannerView!.adUnitID = id
        adBannerView!.delegate = self
        adBannerView!.rootViewController = self
        
        adBannerView!.load(GADRequest())
    }
    
    // Called when an ad request loaded an ad.
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        addBannerViewToView(bannerView)
        
        print(bannerView.adUnitID)
    }
    
    // Called when an ad request failed.
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print((error.localizedDescription))
    }
    
    // Called just before presenting the user a full screen view, such as a browser, in response to
    // clicking on an ad.
    func adViewWillPresentScreen(_ bannerView: GADBannerView) {
        print(#function)
    }
    
    // Called just before dismissing a full screen view.
    func adViewWillDismissScreen(_ bannerView: GADBannerView) {
        print(#function)
    }
    
    // Called just after dismissing a full screen view.
    func adViewDidDismissScreen(_ bannerView: GADBannerView) {
        print(#function)
    }
    
    // Called just before the application will background or terminate because the user clicked on an
    // ad that will launch another application (such as the App Store).
    func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
        print(#function)
    }
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        let tabIndex = tabBar.items?.index(of: item)

        if tabIndex == 0 {
            setActionSheep()
        }else if tabIndex == 1 {
            print("1")

        }else if tabIndex == 2 {
            print("2")

            
        }else if tabIndex == 3 {
            print("3")

            
        }
    }
    func setActionSheep(){
        alert =  UIActionSheet(title: "解籤", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: nil, otherButtonTitles: "4","9","3")
        alert?.show(in: self.view)
        
    }
    func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int) {
        print(buttonIndex)
    }
   
    
}

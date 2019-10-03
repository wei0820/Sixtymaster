//
//  SelectController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/10/3.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class SelectController: UIViewController,GADBannerViewDelegate {
var adBannerView: GADBannerView?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true

        if #available(iOS 13.0, *) {
                  overrideUserInterfaceStyle = .light
              } else {
                  // Fallback on earlier versions
                  overrideUserInterfaceStyle = .light

              }
        setAdBanner()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_1(_ sender: Any) {
        
        let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                           let HomeVc = stroyboard.instantiateViewController(withIdentifier: "map")
                           let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                           appDelegate.window?.rootViewController = HomeVc
    }
    @IBAction func btn_2(_ sender: Any) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                           let HomeVc = stroyboard.instantiateViewController(withIdentifier: "list")
                           let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                           appDelegate.window?.rootViewController = HomeVc
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
}

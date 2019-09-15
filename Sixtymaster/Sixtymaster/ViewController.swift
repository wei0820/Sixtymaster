//
//  ViewController.swift
//  Sixtymaster
//
//  Created by  JackPan on 2019/2/5.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
 import GoogleMobileAds
class ViewController: UIViewController, GADBannerViewDelegate ,UISearchBarDelegate ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var sb: UISearchBar!
    @IBOutlet weak var tb: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(isSearch){
            return arrSearch.count
        }else{
            return itemName.count

        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,for:indexPath)
        cell.textLabel?.textAlignment = .center

        if (isSearch){
            cell.textLabel?.text = arrSearch[indexPath.row]

        }else{
        cell.textLabel?.text = itemName[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        tableView.deselectRow(
            at: indexPath, animated: true)
        
        let name = itemName[indexPath.row]
        print(name)
        if (name == itemName[0]){
            performSegue(withIdentifier: "one", sender: nil)
        }else if(name ==  itemName[1]){
            performSegue(withIdentifier: "two", sender: nil)
        }else if(name ==  itemName[2]){
            performSegue(withIdentifier: "three", sender: nil)
        }else if(name ==  itemName[3]){
            performSegue(withIdentifier: "four", sender: nil)
        }else if(name ==  itemName[4]){
            performSegue(withIdentifier: "five", sender: nil)
        }else if(name ==  itemName[5]){
            performSegue(withIdentifier: "six", sender: nil)
        }
    }
    
    
   var itemName = [
                   "第一籤　甲子","第二籤　甲寅","第三籤　甲辰","第四籤　甲午","第五籤　甲申","第六籤　甲戌","第七籤　乙丑","第八籤　乙卯","第九籤   乙巳","第十籤　乙未",
                   "第十一籤　乙酉","第十二籤   乙亥","第十三籤　丙子","第十四籤　丙寅","第十五籤　丙辰","第十六籤　丙午","第十七籤　丙申","第十八籤   丙戌","第十九籤　丁丑","第二十籤　丁卯",
                   "第二一籤　丁巳","第二二籤　丁未","第二三籤　丁酉","第二四籤　丁亥","第二五籤　戊子","第二六籤　戊寅","第二七籤　戊辰","第二八籤　戊午","第二九籤　戊申","第三十籤　戊戌",
                   "第三一籤　己丑","第三二籤　己卯","第三三籤　己巳","第三四籤　己未","第三五籤　己酉","第三六籤　己亥","第三七籤　庚子","第三八籤　庚寅","第三九籤　庚辰","第四十籤　庚午",
                   "第四一籤　庚申","第四二籤　庚戌","第四三籤　辛丑","第四四籤   辛卯","第四五籤　辛巳","第四六籤   辛未","第四七籤   辛酉","第四八籤   辛亥","第四九籤　壬子","第五十籤　壬寅",
                   "第五一籤　壬辰","第五二籤　壬午","第五三籤　壬申","第五四籤　壬戌","第五五籤　癸丑","第五六籤　癸卯","第五七籤　癸巳","第五八籤　癸未","第五九籤　癸酉","第六十籤　癸亥","頭籤","籤首","籤王"]
    var adBannerView: GADBannerView?
    var isSearch : Bool = false
    var arrSearch = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setAdBanner()
        
        
        
    }

    func setAdBanner(){
        let id = "ca-app-pub-7019441527375550/6790180968"
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
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearch = false
        sb.text = ""
        sb.resignFirstResponder()
        tb.reloadData()
            
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        onSearch(str: searchText)
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        onSearch(str: sb.text!)
        sb.resignFirstResponder()
    }
    
    func onSearch(str :String){
        
        isSearch = true
        arrSearch = [String]()
        for name in itemName{
            let index = name.range(of: str)
            if (index?.isEmpty != nil){
                self.arrSearch.append(name)
            }
        }
        tb.reloadData()
        
    }
}


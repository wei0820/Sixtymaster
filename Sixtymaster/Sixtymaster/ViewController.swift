//
//  ViewController.swift
//  Sixtymaster
//
//  Created by  JackPan on 2019/2/5.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
 import GoogleMobileAds
import CommonCrypto
import Firebase
import GoogleSignIn
import FirebaseDatabase
class ViewController: mViewController ,UISearchBarDelegate ,UITableViewDataSource,UITableViewDelegate{
    let userDefaults = UserDefaults.standard
    @IBOutlet weak var sb: UISearchBar!
    @IBOutlet weak var tb: UITableView!
    var name :String = ""
    var item : Int = 0
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
        
        name = itemName[indexPath.row]
        item = indexPath.row + 1
        print(name)
        if (name == itemName[0]){
            performSegue(withIdentifier: "one", sender: nil)
        }else if(name ==  itemName[1]){
            performSegue(withIdentifier: "two", sender: nil)
        }else if(name ==  itemName[2]){
            performSegue(withIdentifier: "three", sender: nil)
        }else if(name ==  itemName[3]){
            performSegue(withIdentifier: "four", sender: nil)
        }else{
            performSegue(withIdentifier: "four", sender: nil)
        }
    }
    
    
   var itemName = [
                   "第一籤　甲子","第二籤　甲寅","第三籤　甲辰","第四籤　甲午","第五籤　甲申","第六籤　甲戌","第七籤　乙丑","第八籤　乙卯","第九籤   乙巳","第十籤　乙未",
                   "第十一籤　乙酉","第十二籤   乙亥","第十三籤　丙子","第十四籤　丙寅","第十五籤　丙辰","第十六籤　丙午","第十七籤　丙申","第十八籤   丙戌","第十九籤　丁丑","第二十籤　丁卯",
                   "第二一籤　丁巳","第二二籤　丁未","第二三籤　丁酉","第二四籤　丁亥","第二五籤　戊子","第二六籤　戊寅","第二七籤　戊辰","第二八籤　戊午","第二九籤　戊申","第三十籤　戊戌",
                   "第三一籤　己丑","第三二籤　己卯","第三三籤　己巳","第三四籤　己未","第三五籤　己酉","第三六籤　己亥","第三七籤　庚子","第三八籤　庚寅","第三九籤　庚辰","第四十籤　庚午",
                   "第四一籤　庚申","第四二籤　庚戌","第四三籤　辛丑","第四四籤   辛卯","第四五籤　辛巳","第四六籤   辛未","第四七籤   辛酉","第四八籤   辛亥","第四九籤　壬子","第五十籤　壬寅",
                   "第五一籤　壬辰","第五二籤　壬午","第五三籤　壬申","第五四籤　壬戌","第五五籤　癸丑","第五六籤　癸卯","第五七籤　癸巳","第五八籤　癸未","第五九籤　癸酉","第六十籤　癸亥","頭籤","籤首","籤王"]
    var isSearch : Bool = false
    var arrSearch = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if((userDefaults.value(forKey: "userID")) != nil){
            setRightButton(s: "訪客")

        }else{
            setRightButton(s: "會員中心")

        }

        setLiftButton()
//        test()
//        test2()
//
        
        
    }

    func setRightButton(s: String){
        // 導覽列右邊按鈕
              let rightButton = UIBarButtonItem(
                                       title:s,
                                       style:.plain,
                                       target:self,
                                       action:#selector(ViewController.setting))
                                     // 加到導覽列中
                                     self.navigationItem.rightBarButtonItem = rightButton
 
    

    
        

      
        
    }
    func setLiftButton(){
           // 導覽列右邊按鈕
                 let liftButton = UIBarButtonItem(
                                          title:"首頁",
                                          style:.done,
                                          target:self,
                                          action:#selector(ViewController.homePage))
                                        // 加到導覽列中
        self.navigationItem.leftBarButtonItem = liftButton
    
       

       
           

         
           
       }
    @objc func setting() {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "member"){
                     present(controller, animated: true) {
                     
                         
                     }

                 }
        
        
    
    }
    @objc func homePage() {
             let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                       let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
                       let appDelegate = UIApplication.shared.delegate as! AppDelegate;
                       appDelegate.window?.rootViewController = HomeVc
        
        
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "four"{
            let secondCV = segue.destination as! FourController
            secondCV.item = self.item
        }
    
    }
    

    func test(){

        let reference: DatabaseReference! = Database.database().reference().child("movieReviews").child("userId-00001")
        
        // 新增節點資料
        var movieReview: [String : AnyObject] = [String : AnyObject]()
        movieReview["movieId"] = "0000001" as AnyObject
        movieReview["movieName"] = "玩命關頭8" as AnyObject
        movieReview["movieReview"] = "緊張刺激，不可不看！" as AnyObject
        movieReview["createDate"] = "111122reg" as AnyObject
        
        let childRef = "11111" // 隨機生成的節點唯一識別碼，用來當儲存時的key值
        let movieReviewReference = reference.child(childRef)
        
        movieReviewReference.updateChildValues(movieReview) { (err, ref) in
            if err != nil{
                print("err： \(err!)")
                return
            }
            
            print(ref.description())
        }
    }
    
    func test2(){
        // 查詢節點資料
        Database.database().reference().child("movieReviews").child("userId-00001").observe(.childAdded, with: {
            (snapshot) in
            // childAdded逐筆呈現
            if let dictionaryData = snapshot.value as? [String: AnyObject]{
                print(dictionaryData)
                print(snapshot.key)
            }
            
        }, withCancel: nil)
    }
    
    func test3(){
        // 刪除節點資料
        Database.database().reference().child("movieReviews").child("userId-00001").removeValue { (error, ref) in
               if error != nil{
                   print(error!)
                   return
               }
               
               print("remove data success...")
           }
    }
}

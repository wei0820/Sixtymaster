//
//  SeekSignViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/12/9.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit

class SeekSignViewController: mViewController {
    @IBOutlet weak var changeimg: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var img: UIImageView!
    var imgList = ["bad","laugh","saint"]
    var typeList = ["陰筊","笑筊","聖筊"]
    var ischeck = false
    @IBOutlet weak var mimga: UIImageView!
    @IBOutlet weak var typelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view_1.isHidden = false
        view2.isHidden = true

        DispatchQueue.main.asyncAfter(deadline:DispatchTime.now()+3){
            self.img.image = UIImage(named: "paoshandadilots")
            self.mlabel.text = "開始求籤,請搖晃手機"
            
        }

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var mlabel: UILabel!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view_1: UIView!
    var checkInt = 0
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {

        if(ischeck){
            var numberInt = Int.random(in: 0...2)

                    self.mimga.image = UIImage(named: imgList[numberInt])
                    self.typelabel.text = typeList[numberInt]
            if(numberInt == 2){
                checkInt+=1
                if(checkInt >= 3){
                    
                }else{
                    checkInt = 0
                    self.typelabel.text = typeList[numberInt]+"請重新求籤"

                }
                
            }else{
                checkInt = 0
                self.typelabel.text = typeList[numberInt]+"請重新求籤"

            }
        }else{
                    self.img.isHidden = true
                    self.mlabel.text = ""
                    view2.isHidden = false

                    var numberInt = Int.random(in: 1...60)
    
                    self.number.text = String(numberInt)
        }
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    }
    @IBAction func startbtn(_ sender: Any) {
        self.view2.isHidden = true
        ischeck = true
        self.view_1.isHidden = false
        
        
    }
    override func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    }
 
    @IBAction func homer(_ sender: Any) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil);
                               let HomeVc = stroyboard.instantiateViewController(withIdentifier: "home")
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

}

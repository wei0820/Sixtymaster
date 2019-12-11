//
//  SeekSignViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/12/9.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit

class SeekSignViewController: mViewController {
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var img: UIImageView!
    var imgList = ["bad","laugh","saint"]
    var typeList = ["陰筊","笑筊","聖筊"]
    @IBOutlet weak var typelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view_1.isHidden = false
        view2.isHidden = true

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view_1: UIView!
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        var numberInt = Int.random(in: 1...60)
//        img.image = UIImage(named: imgList[number])
//        typelabel.text = typeList[number]
        number.text = String(numberInt)
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
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

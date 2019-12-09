//
//  SeekSignViewController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/12/9.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit

class SeekSignViewController: mViewController {
    @IBOutlet weak var img: UIImageView!
    var imgList = ["bad","laugh","saint"]
    var typeList = ["陰筊","笑筊","聖筊"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    
        img.image = UIImage(named: imgList.randomElement()!)
        print(imgList.randomElement()!)
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    }
    override func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
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

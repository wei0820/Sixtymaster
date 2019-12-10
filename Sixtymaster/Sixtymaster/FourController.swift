//
//  FourController.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/9/23.
//  Copyright © 2019 jackpan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class FourController: mViewController{
    var titleName: String = ""
    @IBOutlet weak var mUIImageView: UIImageView!
    @IBOutlet weak var mTextView: UITextView!
    var item : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        getType()

        // Do any additional setup after loading the view.
    }
    func getType(){
        itemClass.setImageView(myImageView: mUIImageView, item: item)
        itemClass.setUITextView(mUITextView: mTextView, item: item)
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

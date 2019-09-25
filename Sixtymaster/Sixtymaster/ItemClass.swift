//
//  ItemClass.swift
//  Sixtymaster
//
//  Created by oneplay on 2019/9/24.
//  Copyright © 2019 jackpan. All rights reserved.
//

import Foundation
import UIKit
class itemClass {
    let mImageId = 0
    let mMessageItem = ""
    
    static func selectItem(myImageView: UIImageView,mUITextView : UITextView,item : Int){
        setImageView(myImageView: myImageView,item: item)
        
    }
    
    static func setImageView(myImageView: UIImageView,item : Int){
        myImageView.image = (UIImage(named: String(item)))
    }
    
    static func setUITextView(mUITextView : UITextView,item :Int){
        mUITextView.text = NSLocalizedString("+item+", comment: "")
        
    }
    
}

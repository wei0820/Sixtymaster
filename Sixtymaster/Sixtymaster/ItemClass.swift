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
        switch item {
        case 4:
            mUITextView.text = ""
        case 5:
            mUITextView.text = ""
        case 6:
            mUITextView.text = ""
        case 7:
            mUITextView.text = ""
        case 8:
            mUITextView.text = ""
        case 9:
            mUITextView.text = ""
        case 10:
            mUITextView.text = ""
        case 11:
            mUITextView.text = ""
        case 12:
            mUITextView.text = ""
        case 13:
            mUITextView.text = ""
        case 14:
            mUITextView.text = ""
        case 15:
            mUITextView.text = ""
        case 16:
            mUITextView.text = ""
        case 17:
            mUITextView.text = ""
        case 18:
            mUITextView.text = ""
        case 19:
            mUITextView.text = ""
        case 20:
            mUITextView.text = ""
        case 21:
            mUITextView.text = ""
        default:
            mUITextView.text = ""
            
            
        }
        
        
    }
}

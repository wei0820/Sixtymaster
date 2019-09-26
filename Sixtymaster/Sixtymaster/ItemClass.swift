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
        case 22:
            mUITextView.text = ""
        case 23:
            mUITextView.text = ""
        case 24:
            mUITextView.text = ""
        case 25:
            mUITextView.text = ""
        case 26:
            mUITextView.text = ""
        case 27:
            mUITextView.text = ""
        case 28:
            mUITextView.text = ""
        case 29:
            mUITextView.text = ""
        case 30:
            mUITextView.text = ""
        case 31:
            mUITextView.text = ""
        case 32:
            mUITextView.text = ""
        case 33:
            mUITextView.text = ""
        case 34:
            mUITextView.text = ""
        case 35:
            mUITextView.text = ""
        case 36:
            mUITextView.text = ""
        case 37:
            mUITextView.text = ""
        case 38:
            mUITextView.text = ""
        case 39:
            mUITextView.text = ""
        case 40:
            mUITextView.text = ""
        case 41:
            mUITextView.text = ""
        case 42:
            mUITextView.text = ""
        case 43:
            mUITextView.text = ""
        case 44:
            mUITextView.text = ""
        case 45:
            mUITextView.text = ""
        case 46:
            mUITextView.text = ""
        case 47:
            mUITextView.text = ""
        case 48:
            mUITextView.text = ""
        case 49:
            mUITextView.text = ""
        case 50:
            mUITextView.text = ""
        case 51:
            mUITextView.text = ""
        case 52:
            mUITextView.text = ""
        case 53:
            mUITextView.text = ""
        case 54:
            mUITextView.text = ""
        case 55:
            mUITextView.text = ""
        case 56:
            mUITextView.text = ""
        case 57:
            mUITextView.text = ""
        case 58:
            mUITextView.text = ""
        case 59:
            mUITextView.text = ""
        case 60:
            mUITextView.text = ""
        case 61:
            mUITextView.text = ""
        case 62:
            mUITextView.text = ""
        case 63:
            mUITextView.text = ""
        default:
            mUITextView.text = ""
            
            
        }
        
        
    }
}

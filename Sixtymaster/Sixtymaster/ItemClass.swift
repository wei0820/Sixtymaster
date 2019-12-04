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
            mUITextView.text = """
            第四籤【甲午】
            ●●●　●○○
            屬金利秋　宜其西方
            
            風恬浪靜可行舟
            恰是中秋月一輪
            凡事不須多憂慮
            福祿自有慶家門
            
            籤解
            
            凡事　成者大吉。
            作事　有成。
            家事　綿綿齊輝。
            家運　大獲吉昌。
            婚姻　和諧。月半成。
            求兒　好。
            六甲　先男後女。
            求財　在家好。出外凶。
            功名　顯祖榮宗。
            歲君　平安。
            治病　近日痊癒。
            出外　求財求事如意。
            經商　大吉利。
            來人　即到。
            行舟　風平。大吉。
            移居　可慶。
            失物　月光在。
            求雨　月末即到。
            官事　破財。求貴人解。
            六畜　興盛。
            耕作　有收。
            築室　門庭興旺。
            墳墓　可得瑞氣。
            討海　有大財。
            作塭　有望。
            魚苗　月光好。
            月令　好。
            尋人　快遇。
            遠信　遲到。
            
            
            籤詩語譯
            
            風恬浪靜可行舟
            
            風平浪靜可以乘船而行。
            恰是中秋月一輪
            
            高掛天空的正好是中秋節的又圓又明亮的月亮。
            凡事不須多憂慮
            
            不必過多的煩惱和憂慮。
            福祿自有慶家門
            
            福德、財富都是上天注定的，時間一到自然會有好事降臨家中。
            
            籤意分享
            
            求得此籤表示您目前的情況相當平靜無事，不必過多猜疑、自尋煩惱，事情順利進行著。若問事情成功時機為中秋。
            """
        case 5:
            mUITextView.text = """
            第五籤【甲申】
             ●○○　○●○

            屬水利冬　宜其北方

            兒恐前途命有變
            勸君作急可宜先
            且守長江無大事
            命逢太白守身邊

            只恐前途命有變
            勸君作急可宜先
            且守長江無大事
            命逢太白守身邊

             命字，另有作明字一說。
            太白，指太白金星神。

            「太白」在古籍上另有一解，即為孛星（彗星、掃把星），是指凶星之意 ，但是後來確認籤詩所指是太白金星（吉星）無誤，可危中得安。

            籤解

            凡事　待時機。
            作事　顛倒。前凶後吉。
            家事　有貴人。團圓。
            家運　先被邪。後吉祥。
            婚姻　多口舌。不吉。
            求兒　不佳。
            六甲　頭胎生女次生男。(先女后女)
            求財　以待時來。(不吉)
            功名　必遇。防徼。
            歲君　平安。
            治病　月光癒。暗不吉。
            出外　下半年好。
            經商　先利。後遇貴人。
            來人　遲後到。
            行舟　出外有風波災。
            移居　不好。
            失物　謹尋在。遲即無。
            求雨　朝夕即有。
            官事　宜和拖尾。(被官欺。后完明)
            六畜　不祥。
            耕作　內有不足。
            築室　不吉。
            墳墓　先平後得佳氣。
            討海　邪病先輕後好。
            作塭　先難後得。
            魚苗　先無後有。
            月令　淡淡。
            尋人　待慢。
            遠信　必阻遲至。

            籤詩語譯

            只恐前途命有變

            未來的前途恐怕會有變化，發生不好的事。
            勸君作急可宜先

            勸您先停下目前的計畫，不必急著要搶先機。
            且守長江無大事

            守在長江岸邊等待時機到來。
            命逢太白守身邊

             籤意分享

            雖然計畫很好，但是一旦執行會有意想之外的壞事發生，自己的運氣亦走到不好的時候，要小心為宜。幸好有太白金星守護，不會發生什麼大壞事，還是守住目前的的成果，等待時機來了，再做計畫。
            """
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
            mUITextView.text = """
            此張頭籤表示祝福之意，拿到這支籤暗示百事皆成，所以神明讓占卜者添個香油錢意思意思即可。若卜者仍覺得疑惑沒有獲得解決，可以再抽一張籤詢問。有的廟宇認為抽到這張籤之後，還必須再抽一張，因為此籤類似平安符性質，不等於跟信徒解釋清楚疑難問題，所以還需再抽。至於這張頭籤可以收起來當護符使用，要不要過爐，則視廟方規定。
            """
        case 62:
            mUITextView.text = """
            籤　解
            百事皆吉
            求財大利
            耕作大收
            經商有利
            家運平安
            運途好
            功名有望
            婚姻可成
            """
        case 63:
            mUITextView.text = """
            任祈所求皆大吉　一向前途振輝騰

            求得籤王萬事成　添油三斤點佛燈
            """
        default:
            mUITextView.text = ""
            
            
        }
        
        
    }
}

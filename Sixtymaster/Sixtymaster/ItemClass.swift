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
            mUITextView.text = """
            六十甲子籤

            第六籤【甲戌】
             ○●○　○○○
            屬火利夏　宜其南方

            風雲致雨落洋洋
            天災時氣必有傷
            命內此事難和合
            更逢一足出外鄉


            籤解

            凡事　待望。
            作事　不成局。
            家事　家庭相爭。
            家運　有怪必防。
            婚姻　不宜。
            求兒　不可。
            六甲　男高貴。晚投枝。
            求財　空有。
            功名　難望。
            歲君　破財。27月令不吉。
            治病　邪作病。險不吉。
            出外　無貴人。
            經商　財本耗散。
            來人　月光即到。
            行舟　不好。
            移居　且慢。
            失物　運如此。路難逢。
            求雨　不到則久。
            官事　了錢。拖尾。
            六畜　不佳。
            耕作　無收。
            築室　犯凶星。
            墳墓　地運不佳。
            討海　邪祟不利。
            作塭　失利。
            魚苗　失利了錢。
            月令　不遂。
            尋人　遲遇。
            遠信　無望。

            籤詩語譯

            風雲致雨落洋洋

            雲雨鋒面來了，大雨下個不停。
            天災時氣必有傷

            天災發生時，必定會造成損傷。

            命內此事難和合

            這件事情注定難和諧。

            更逢一足出外鄉
            更會遇到離家外出的事情。

            籤意分享

            所謂「生死有命，富貴在天」，「姻緣天注定」，您得到此籤表示您所有請示的事情是命中所沒有的，就算勉強爭取也不會得到好結果，猶如天災來臨一定會有所損傷一樣，這件事求強會對您造成傷害。也要留意會有發生離家赴外地的事，或者是放棄原本的成果之意。求得此籤應避免與人合作。
            """

        case 7:
            mUITextView.text = """
            六十甲子籤

            第七籤【乙丑】
            ○○●　●○●
            屬火利夏　宜其南方
            屬金利秋　宜其西方

            雲開月出正分明
            不須進退問前程
            婚姻皆由天註定
            和合清吉萬事成

             正字，另有改作見字一說。
             問字，另有改作向字一說。

             籤解

            凡事　後成。
            作事　月光成。
            家事　冒險。平安。
            家運　漸漸平安。
            婚姻　月光成。暗不成。
            求兒　好。
            六甲　定必生女。
            求財　有成。
            功名　少有成。老無。
            歲君　好。
            治病　女平。男晚好。少險。老不畏。
            出外　滿路異香。
            經商　成者大吉。
            來人　月中到。
            行舟　須當先防。
            移居　不吉。
            失物　月光在。月暗無
            求雨　初無。月尾有。
            官事　破財。完局。
            六畜　興旺。
            耕作　有收。
            築室　月中好。
            墳墓　地勢甚美。
            討海　合和吉。不合凶。
            作塭　須防風水。
            魚苗　月中吉。
            月令　淡淡。
            尋人　月中遇。
            遠信　可喜。


            籤詩語譯

            雲開月出正分明

            雲散開就可以看見明亮的月亮。
            不須進退問前程

            不必問前途要前進或要後退。
            婚姻皆由天註定

            姻緣是由上天注定好的。
            和合清吉萬事成

            如果是上天注定的良緣，做什麼都可以成功。

            　　

             籤意分享

            雖然目前您所問的事情遇到一些困難或麻煩之處，而且你已經清楚的知道這件事情的問題所在了。不用擔心地問現在是要往前進還是要往後退，而是認清事情的真相，按照道理來做事情。只要是上天注定的好姻緣或機會，做什麼都會順利成功的，如果不是天定的良緣，也不要強求。
            """
        case 8:
            mUITextView.text = """
            六十甲子籤

            第八籤【乙卯】
             ○● ●　●○●
            屬水利冬　宜其北方

            禾稻看看結成完
            此事必定兩相全
            回到家中寬心坐
            妻兒鼓舞樂團圓

            鼓舞，另有改作皷腹一說。

            籤解

            凡事　和者得。不和失。
            作事　先難後興。
            家事　進益團美。
            家運　平安。
            婚姻　成。大吉。兩全其美。
            求兒　吉。
            六甲　先男後女。
            求財　下半年好。家利。
            功名　二次得進。
            歲君　和氣。
            治病　少不畏。老不好。
            出外　不可。
            經商　有利必得。
            來人　速到。
            行舟　得財。
            移居　大吉。
            失物　速尋必在。
            求雨　月尾即有。
            官事　二次完明。了財。
            六畜　大吉。
            耕作　下半年有收成。
            築室　居中。(鼓員固美)
            墳墓　地運有合。
            討海　好。
            作塭　允收。
            魚苗　大利。
            月令　破財。下年不畏。(和氣)
            尋人　速至。
            遠信　速至。


            籤詩語譯

            禾稻看看結成完
            看見稻子已經結實纍纍。
            此事必定兩相全
            這件事情雙方都會得到答案。
            回到家中寬心坐
            安心地在家中等待。
            妻兒鼓舞（腹）樂團圓
            妻子、兒女歡樂團員。

             籤意分享

            看見結實纍纍的稻子，表示所詢問的事情已經得到消息，要認同並接受這樣的結果。若問感情，交往中感情穩定者表，示未來有情人終成眷屬，或有得子之兆；若分手問復合者，「此事必定兩相全」，若一方以無意復合，則復合難成，應該平心靜氣接受這樣的結果。
            """
        case 9:
            mUITextView.text = """
            六十甲子籤

            第九籤【乙巳】
             ●●●　○○○
            屬火利夏　宜其南方

            龍虎相隨在深山
            君爾何須背後看
            不知此去相愛愉
            他日與我卻無干

            愉字，另有改作娛字一說。

            籤解

            凡事　謹慎。
            作事　守己安分。
            家事　無有際會。
            家運　有邪。難安。
            婚姻　不可。
            求兒　切要不可。
            六甲　子媳虛。
            求財　無益。
            功名　不取。
            歲君　不吉。
            治病　運深危險。寅辰日過不畏。
            出外　不可。
            經商　了錢。
            來人　未日(半月)到。
            行舟　不美。
            移居　不佳。
            失物　難尋。
            求雨　尚未。自有。
            官事　不可。破財。
            六畜　不可納。
            耕作　無收。了工。
            築室　且慢也可。
            墳墓　地勢適當。
            討海　有犯邪祟。
            作塭　了工蝕本。
            魚苗　了錢。
            月令　破財有口舌。
            尋人　漸回。
            遠信　無望。


            籤詩語譯

            龍虎相隨在深山

            龍與虎分屬不同性質的靈獸，相偕住在深山裡。
            君爾何須背後看

            你又何必在背後猜忌，勾心鬥角。
            不知此去相愛愉

            卻不知道雖然表面上看起來相親相愛。
            他日與我卻無干

            日後會變成互不相干，形同陌生人的局面。

            　　

             籤意分享

            「龍虎」有激烈鬥爭之意，意寓兩者本質不同，不要勉強相處，即使目前情況看起來相處愉快或前景看好，但是日後會鬧得不愉快，最後形同陌路。求得此籤舉凡男女交往、結婚、合夥做生意等皆不宜，最後會不愉快地分手或拆夥。

            若問工作之人際關係，則勿參與人事內鬥。
            """
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

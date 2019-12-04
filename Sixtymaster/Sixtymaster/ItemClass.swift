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
            mUITextView.text = """
            六十甲子籤

            第十籤【乙未】
             ●●○　●● ●
            屬金利秋　宜其西方

            花開結子一半枯
            可惜今年汝虛度
            漸漸日落西山去
            勸君不用向前途

            籤解

            凡事　拖尾。難解難脫。
            作事　難成。
            家事　恐防短壽。
            家運　難安。
            婚姻　不可。難成。
            求兒　不可。
            六甲　子媳難得
            求財　上半年空破財。九月過不畏。
            功名　枉費。難得。
            歲君　不順。
            治病　月半安。月尾死。
            出外　不可。
            經商　不好。了錢。
            來人　月底間。
            行舟　謹慎無害。
            移居　不允。
            失物　難尋。
            求雨　朝夕即到。
            官事　大了錢。不好。
            六畜　不吉。
            耕作　五分平平。
            築室　有災星。
            墳墓　地犯退敗。必遷。
            討海　全無。不好。
            作塭　無望。蝕本。
            魚苗　得失。
            月令　難通。
            尋人　月尾回。
            遠信　難至。

            籤詩語譯

            花開結子一半枯
            花開了但是卻只有一半結果，另一半枯萎了。
            可惜今年汝虛度
            令人惋惜地，你虛度今年的光陰。
            漸漸日落西山去
            太陽漸漸地向西山落去。
            勸君不用向前途
            勸你不用再費功夫。

             籤意分享

            雖然自己努力與用心，但是目前的氣運就像是太陽西下一樣往下走，漸漸變暗，即使努力也大多白費力氣，沒什麼成果，只能感嘆與惋惜浪費時間，所以不必想要達成心中的願望，或做改變。問交往、結婚，此對象不宜。問換工作，則應於原來的工作崗位上繼續努力，不宜換。
            """
        case 11:
            mUITextView.text = """
            六十甲子籤

            第十一籤【乙酉】
             ●○●　●○●
            屬水利冬　宜其北方

            靈雞漸漸見分明
            凡事且看子丑寅
            雲開月出照天下
            郎君即便見太平

            籤解

            凡事　作不和。子錢安。
            作事　子丑寅日必成。
            家事　平好。
            家運　漸漸得居春風。
            婚姻　終成。
            求兒　不可。(可也)
            六甲　先男。貴氣。(子媳缺)
            求財　漸漸有收。
            功名　費了工。八月好。
            歲君　順吉。
            治病　大命不好。子丑寅日過不畏。
            出外　子丑寅日可行。
            經商　不利。
            來人　近日到。
            行舟　不可。
            移居　平安。(子丑寅日抽好)
            失物　子丑寅日尋在。
            求雨　近有。
            官事　有人和吉。三月完局。
            六畜　可納。
            耕作　半收。
            築室　好。
            墳墓　平平。
            討海　前呆后微。
            作塭　小收微利。
            魚苗　小利。
            月令　不畏。
            尋人　牛虎日。
            遠信　牛虎日。


            籤詩語譯

            靈雞漸漸見分明
            聽到公雞叫，就是要漸漸天亮的時候了。
            凡事且看子丑寅
            無論什麼事，在子、丑、寅的時候都可以有個結果出現。
            雲開月出照天下
            雲散開了，月亮照耀天下。
            郎君即便見太平
            你就可以平安無事了。

             籤意分享

            當雞啼叫就是即將天亮的時候，雖然現在您所問的事情如黎明前的黑暗，還不明朗，也像雲遮住月亮的光輝般地昏暗，但是等到時機（子、丑、寅）一到，就像是陰霾掃盡，月亮放光明照耀天下一樣，結果顯現出來。由於結果是「見太平」，是平安無事的意思。

            若問考試需要努力，可以考上但是成績不是非常高。

            問事成時機的話，子、丑、寅近的話可解為月份，月份多為農曆之十一、十二、一月，也有應於國曆一、二、三月的情況，遠可解為鼠、牛、虎年。

            籤詩中的「靈雞」可視為契機或者是貴人之意，如為貴人時可留意身邊屬雞的的人，可能就是您的貴人。
            """
        case 12:
            mUITextView.text = """
            六十甲子籤

            第十二籤【乙亥】
            ●○○　●○○
            屬火利夏　宜其南方

            長江風浪漸漸靜
            于今得進可安寧
            必有貴人相扶助
            凶事脫出見太平

            籤解

            凡事　月光好。
            作事　進行有利。
            家事　光耀門閭。
            家運　漸安。
            婚姻　可合成者吉。
            求兒　吉。
            六甲　先男高貴。
            求財　好運。得意。
            功名　難得。
            歲君　順吉。
            治病　月光好。老不痊。
            出外　有貴人扶。
            經商　大吉。
            來人　近日到。
            行舟　大吉。
            移居　平正。
            失物　急尋在。遲難尋。
            求雨　遠。
            官事　了錢。求貴人脫。
            六畜　可納。
            耕作　平平。
            築室　慢即可。
            墳墓　地勢有合。
            討海　微利后有。
            作塭　漸得如意。
            魚苗　中有利。
            月令　破財不遂。
            尋人　近日。
            遠信　速至。


            籤詩語譯

            長江風浪漸漸靜
            長江的風浪漸漸平息了。
            于今得進可安寧
            現在風平浪靜的時候，船才得以安全的前進。
            必有貴人相扶助
            一定會有貴人幫忙。
            凶事脫出見太平
            危險的事情轉為平安。

             籤意分享

            危險的事情終於在貴人的相助之下，可以轉為平安，就像長江的風浪平息了，船才得以安全的前進。求得此籤表示所期待的事面臨危險的狀況，必須忍耐並等待貴人相助才能夠解決，或找尋貴人幫忙化解危機。

            抽到此籤最重要的事要分辨對自己而言危險指的是什麼，例如很多人為求感情復合，都求到此籤，但卻未必能復合，這是因為有些人的對象是不好的對象，分開對他而言才是脫離難關，邁向平順的未來。

            若分手的對象是良緣，復合的方法應該要找他人（貴人）從中協調，復合有望。

            """
        case 13:
            mUITextView.text = """
            六十甲子籤

            第十三籤【丙子】
            ●●○　○○○
            屬水利冬　宜其北方

            命中正逢羅孛關
            用盡心機總未休
            作福問神難得過
            恰是行舟上高灘

            羅孛為凶星（彗星、掃把星的意思，而且羅孛是指光芒強盛的彗星，請參考下面引用『台北星空』第83期資料）

            高灘為擱淺之意

            籤解

            凡事　不吉
            作事　先難後興。
            家事　門庭起風波。
            家運　人不安。邪作祟。
            婚姻　難合。
            求兒　不可。
            六甲　臨產危險。
            求財　犯活鬼。下年無。
            功名　費工。望後得進。
            歲君　淡淡。(凶事不美)
            治病　犯(太歲)必死。未不畏。
            出外　不可。
            經商　失運。
            來人　難望。
            行舟　不順。失利。
            移居　不可
            失物　錢難尋。未日(半月)在。
            求雨　近日無。
            官事　大呆。
            六畜　不吉。
            耕作　小收。不利。
            築室　犯災星。
            墳墓　地勢不吉。
            討海　不好。無財。失利。
            作塭　防風水。失。虧本。
            魚苗　待機可以。
            月令　正月至六月止。
            尋人　難。免望。
            遠信　音息魚沉。


            籤詩語譯

            命中正逢羅孛關
            目前遇到了命中注定的難關。
            用盡心機總未休
            雖然盡辦法、費盡心思卻沒有辦法解決。
            作福問神難得過
            祈求神明也幫忙沒有辦法全然解決難關。
            恰是行舟上高灘
            這樣的情形就好像要把船航向高灘上一樣困難。

             籤意分享

            所詢問之事，因為是命中注定會遇到的難關，所以無法如願完成，即使強求或求神明保佑也無法完成心願。籤詩故事「撐渡伯行舟遇太歲」，求籤者當注意自己是否剛好處於太歲年，應該要祭太歲星君化解而沒有做。
            """
        case 14:
            mUITextView.text = """
            六十甲子籤

            第十四籤【丙寅】
            ○●●　●○○
            屬火利夏　宜其南方

            財中漸漸見分明
            花開花謝結子成
            寬心且看月中桂
            郎君即便見太平

            籤解

            凡事　大吉。
            作事　決意成功。
            家事　光前裕后。可喜。
            家運　平安。
            婚姻　成好。
            求兒　平正。
            六甲　先男後女。富貴。
            求財　月光進。漸暗少。
            功名　可喜。
            歲君　中和。
            治病　險。月光過不畏。
            出外　不可(必得貴人)。
            經商　漸得。
            來人　月尾到。
            行舟　月圓過大吉。
            移居　吉。(不可)
            失物　西方尋。(月光在。月暗無)
            求雨　月半無。月尾有。
            官事　破財後。完明。
            六畜　大吉。
            耕作　早晚有收成。
            築室　子孫永發其昌。
            墳墓　得其地。後大吉。
            討海　月光過。大吉。
            作塭　先微。後有大利。
            魚苗　大利。
            月令　頭破錢。後如意。
            尋人　月中至。
            遠信　速至。

            籤詩語譯

            財中漸漸見分明
            從財運或金錢關係來看，事情漸漸地明朗起來了。
            花開花謝結子成
            就像花開花謝了之後果實結成，有一個結果的時候將要到來。
            寬心且看月中桂
            不妨安心地等待月圓時候。
            郎君即便見太平
            這時候到了你便可以平安無事了。

             籤意分享

            這首籤詩最重要的事要瞭解「結子成」的意思，表示所詢問的這件事情已經有了一個結果了，這個結果在農曆十五或中秋節的時候就可以看出來。

            月中桂指的是月圓的時候，或中秋節，求得此籤所詢問的問題要到農曆十五或中秋節才能平安度過。

            由於籤詩中最後的結果是「太平」，所以表示在太平之前是有困難與磨難，而這個困難要特別留意與金錢有關，因為籤詩指點「財中漸漸見分明」，困難結束之後也只是平安無事而已。
            """
        case 15:
            mUITextView.text = """
            六十甲子籤

            第十五籤【丙辰】
            ○○●　○○●
            屬土利年　四方皆宜

            八十原來是太公
            看看晚景遇文王
            目下緊事休相問
            勸君且守待運通

            目字，另有改作月字一說。

            籤解

            凡事　大破財。求解和。
            作事　難成。
            家事　平平。
            家運　平平。
            婚姻　配偶慢成。
            求兒　不可。
            六甲　先女後男。(先男後女)
            求財　晚即發。
            功名　難就。
            歲君　先平後吉。
            治病　求平安。十日險。
            出外　慢日可行。
            經商　漸且候時。
            來人　月尾有。
            行舟　不如意。有事。
            移居　待時。
            失物　緊尋得。遲者無。
            求雨　不日到。
            官事　不吉。求貴人和。
            六畜　漸且退步。
            耕作　無收。
            築室　漸且退步。
            墳墓　遲必發。
            討海　無財和者吉
            作塭　無望
            魚苗　且守慢至。
            月令　不遂。
            尋人　不可急。
            遠信　遲延。

            籤詩語譯

            八十原來是太公
            八十歲的高齡才成就事業的是姜太公。
            看看晚景遇文王
            晚年才遇到周文王的賞識。
            目下緊事休相問
            目前不用急著問什麼事後事情才可以成功。
            勸君且守待運通
            勸你好好等待運氣來的時候。

             籤意分享

            就像姜太公八十歲才遇到周文王，你先不用著急詢問目前的這件事情，不要嫌棄運勢晚成，勸你守著目前的狀況，等待時機到來。

            目前時運未通，應該靜守目前情況，不宜做改變。若問姻緣，則緣分尚未到來。問換工作亦不宜。問疾病，恐會拖延。
            """
        case 16:
            mUITextView.text = """
            六十甲子籤

            第十六籤【丙午】
            ○○○　●●○
            屬水利冬　宜其北方

            不須作福不須求
            用盡心機總未休
            陽世不知陰世事
            官法如爐不自由

            籤解

            凡事　恐防風波災。
            作事　退步。
            家事　恐防有變。
            家運　陰邪。求神解決。
            婚姻　不合。有鬼作怪。
            求兒　不可。
            六甲　先男後女。(子媳虛)
            求財　春夏好秋冬呆。
            功名　難得。
            歲君　浮沉。
            治病　必危。有陰公作祟。未日(半月)過不畏。
            出外　防險。
            經商　難就。了錢。
            來人　遲慢。
            行舟　不如意。惹失。
            移居　不可。
            失物　難尋。(未日(半月)在)
            求雨　不日到。
            官事　緊防刑事。
            六畜　不可納。
            耕作　無收。
            築室　不可。
            墳墓　地勢不佳。
            討海　有陰鬼。難得。
            作塭　難如意。要忍耐。
            魚苗　失利難如意。
            月令　了錢。
            尋人　遲慢。
            遠信　必有失音。

            籤詩語譯

            不須作福不須求
            不必祈求神明的幫助。
            用盡心機總未休
            也不用費盡心思想要達成所祈求的願望，無論怎麼做總是沒有辦法完成心願。
            陽世不知陰世事
            這是因為活在陽世的人沒有辦法瞭解陰間的因果關係。
            官法如爐不自由
            因自己的種種行為而得的果報，這是注定的，一點都由不得現世的人自己作主。

             籤意分享

            心願無法達成，這是因為自己所不知道的因果關係，因此現在的種種不順遂，不要怨天尤人。做事要心存善念，尋正道而行，盡自己的本分多做好事，努力積善因，未來才有結善果的機會。
            """
        case 17:
            mUITextView.text = """
            六十甲子籤

            第十七籤【丙申】
            ○○●　●○○
            屬火利夏　宜其南方

            舊恨重重未改為
            家中禍患不臨身
            須當謹防宜作福
            龍蛇交會得和合

            不▼或誤。連上句當作已。
            得■相

            籤解

            凡事　人害緊。和無事。
            作事　先難後易。
            家事　和為貴。
            家運　居之則安。
            婚姻　大吉。
            求兒　不可。
            六甲　先男後女。
            求財　勤儉必得。
            功名　修陰德必中。
            歲君　淡淡。
            治病　求神庇祐。辰未日(半月)過漸癒。
            出外　辰巳日則可。
            經商　平平。
            來人　辰未日(半月)到。
            行舟　平平。財輕。
            移居　隨意。(不可)
            失物　辰巳日在。(難尋)
            求雨　初初到尾。(不明其意)
            官事　和為貴。不和凶。
            六畜　納者不可。
            耕作　平平。少利。
            築室　有犯陰邪。
            墳墓　平平。小吉。
            討海　微利運不辰
            作塭　運不合。求小利。
            魚苗　微利。
            月令　不畏。漸漸平安。
            尋人　待時。
            遠信　慢。

            籤詩語譯

            舊恨重重未改為
            過去重重疊疊的過錯與困難所帶來的傷害，還留在心裡沒有消失，問題的癥結點也尚未解決。
            家中禍患不臨身
            就像是家中發生的災禍不是在自己身上發生，但是要提防壞事發生在自己身上一般地，
            須當謹防宜作福
            要多做好事為自己造福，這樣可以提防災禍發生。
            龍蛇交會得和合
            等到龍與蛇交會的時候，所迷惘的事情會有一個結果的。

             籤意分享

            這首籤詩提醒當事人要改進過去的錯誤，雖然這個錯誤對自己還沒有造成什麼影響，但是也要多做好事、認真做好自己的分內工作，真相大白或事情得到結果的時機在龍蛇交會之時。

            龍蛇交會所指的是事情明朗、結果出現的時機，近者指月份，龍（辰）為三月，蛇（巳）為四月，遠者指龍年與蛇年交接的時候。

            但若求籤者的生肖為龍或蛇之一，也不妨思考是否龍與蛇指的是當事人與所求之事或貴人為另一生肖。
            """
        case 18:
            mUITextView.text = """
            六十甲子籤

            第十八籤【丙戌】
            ●○○　○●○
            屬土利年。四方皆宜

            君問中間此言因
            看看祿馬拱前程
            若得貴人多得利
            和合自有兩分明

            籤解

            凡事　忍耐求和。
            作事　貴人利。和氣成。
            家事　圓滿進財。
            家運　瑞氣盈庭。
            婚姻　大吉。
            求兒　月光好。月暗平。
            六甲　先男。
            求財　不多。(萬金萬貫連得)
            功名　有望。
            歲君　得利。
            治病　痊癒。
            出外　有貴人提攜。
            經商　大進利市。
            來人　月光到。
            行舟　得財。
            移居　大吉。
            失物　月光在。
            求雨　不日即到。
            官事　速和公判。
            六畜　可好。
            耕作　有收。
            築室　祥氣盈庭。
            墳墓　福人必得福地。
            討海　和者得大財。
            作塭　獲利三倍。
            魚苗　大利。
            月令　平安吉慶。
            尋人　在。
            遠信　佳音速報。


            籤詩語譯

            君問中間此言因
            你要問這件事情的原因與結果。
            看看祿馬拱前程
            看看有祿馬拱照，前途一片看好。
            若得貴人多得利
            如果有貴人幫忙，可以得到很好發展。
            和合自有兩分明
            結果自然會清清楚楚。

             籤意分享

            你想問的事情需要有貴人相助，只要有貴人相助，會有好結果。

            籤詩中「祿馬」拱前程，也不妨思考自己的貴人是否與馬字有關，例如姓馬或生肖屬馬，或者應徵求職的公司與馬有關。

            「祿馬」之馬字亦有解為農曆五月之意，若不作貴人解時，可參考事成之時為五月。

            祿馬是古代狀元所騎的馬，意指得到功名祿位，所以若問考試則有高中之意。若猶豫找工作或考公職，則可朝公職發展。
            """
        case 19:
            mUITextView.text = """
            六十甲子籤

            第十九籤【丁丑】
             ●○●　●●○
            屬水利冬　宜其北方

            富貴由命天註定
            心高必然誤君期
            不然且回依舊路
            雲開月出自分明

            籤解

            凡事　被人害。理完(終)明。
            作事　月光好。
            家事　和而貴。(犯相剋。望神佛)
            家運　不佳。可住平安。
            婚姻　不成。由天註定。
            求兒　慢一步。
            六甲　先女後男。得貴。(作福出麟兒)
            求財　守機而作。
            功名　難得。
            歲君　照舊。
            治病　險。月光好。若(暗)不癒。
            出外　不可。
            經商　難如意。守待時。
            來人　月頭到。
            行舟　平平。
            移居　可。
            失物　月光在。暗難尋。
            求雨　未有。
            官事　命運犯刑相剋。拖尾。
            六畜　不可。
            耕作　不可依舊。
            築室　不可。
            墳墓　舊墳重興。
            討海　運微不逢時。
            作塭　守運心亦虧本。
            魚苗　應月明。
            月令　桂候。
            尋人　暫待。
            遠信　將近就至。


            籤詩語譯

            富貴由命天註定
            人的一生富貴容華與否，都是命中注定的。
            心高必然誤君期
            如果自己的期望過高或內心驕傲，都會是使你錯過前程時機的因素。
            不然且回依舊路
            不然你還是按照原來的路線發展。
            雲開月出自分明
            等到烏雲散去月亮出來的時候，月亮的光輝會照亮四周。

             籤意分享

            人的一生會有多少榮華富貴都是早已注定好的，如果自己心裡的期望過高，一直努力追求沒有辦法達成目標，這樣做反而會錯過原本屬於你的前程與機會。目前所求的事情有阻礙，就像烏雲遮住月亮看不清楚方向般地，不利於現在做改變，暫時還是按照目前的樣子，按兵不動。在等待機會來臨之前，應該要先自我檢討，自我修正與充實，機會一來，就像等到月亮一出來，光輝照耀四周明亮般地，你就會清楚未來的方向了。

            抽中此籤，要特別留意勿心高氣傲、得理不饒人或訂定目標過高超過自己的能力範圍，要衡量自己的條件或情況，作自我調整，當機會來了，才不會錯過屬於自己成功的機會。
            """
        case 20:
            mUITextView.text = """
            六十甲子籤

            第二十籤【丁卯】
            ●○○　●●○
            屬火利夏　宜其南方

            前途功名未得意
            只恐命內有交加
            兩家必定防損失
            勸君且退莫咨嗟

            籤解

            凡事　了錢。拖尾。不合。
            作事　無成。
            家事　恐生孽物。
            家運　防邪怪作之災。
            婚姻　難合。
            求兒　不可。
            六甲　臨產危險。
            求財　不得。
            功名　科運無。難進中。
            歲君　坎坷。
            治病　大命險。未日(半月)好。
            出外　無運。不可。
            經商　不就。
            來人　未日(半月)到。
            行舟　失利。
            移居　不可。
            失物　不得了工。
            求雨　無。
            官事　拖尾破財。
            六畜　不合。
            耕作　難收。
            築室　不得完美。
            墳墓　不可葬。地不合。
            討海　有陰公作祟。
            作塭　命運蹉跎。無望。
            魚苗　失了資本。
            月令　陰邪作病。難遂。
            尋人　延緩。
            遠信　音信沉沒。

            籤詩語譯

            前途功名未得意
            事業、考試、升官等等都不能得意。
            只恐命內有交加
            只怕命中注定有困難與阻礙。
            兩家必定防損失
            如果做事三心兩意、感情不專等必定會造成自己的損失。
            勸君且退莫咨嗟
            勸你不要悲嘆自己時運不佳，暫時放棄往前進的念頭，退守過去的成果。

             籤意分享

            目前遇到的難關是命中注定的，不需要嘆氣悲傷，暫時退守目前的狀況，不要改變。抽到此籤要特別應注意「退」這個字，這是神明指點所遇難關的的解決之道。例如官司不宜纏訟、宜和解，此即為「退」。

            常有問健康的信眾抽中此籤，「只恐命內有交加」表示恐怕會危及生命，要小心提防。生病時當然是要看醫生，不過若有無法醫治或診治的疾病，在此提醒籤詩中「兩家」有時暗指兩家先人的問題，也就是常見的雙姓祖先。
            """
        case 21:
            mUITextView.text = """
            六十甲子籤

            第二一籤【丁巳】
            ●○○　○○○
            屬土利年　四方皆宜

            十方佛法有靈通
            大難禍患不相同
            紅日當空常照耀
            還有貴人到家堂

            籤解

            凡事　貴人扶持。
            作事　和大吉。散得失。
            家事　門庭可恭可賀。
            家運　必得吉昌。
            婚姻　難成。
            求兒　好。
            六甲　先男後女。
            求財　先無後有。
            功名　望後科。
            歲君　中和。
            治病　大命險。貴人扶。
            出外　緩有貴人。
            經商　先難後吉。
            來人　立即到。
            行舟　無大利。
            移居　適宜大吉。
            失物　可在。
            求雨　緩到。
            官事　微殃。有貴人。脫。
            六畜　納之可喜。
            耕作　平平晚收。
            築室　必有餘慶。
            墳墓　顯裕後昆。
            討海　先微。后有大利。
            作塭　有利可得。
            魚苗　慢則有財。
            月令　平后。有貴人。吉。
            尋人　在。
            遠信　速至有喜。

            籤詩語譯

            十方佛法有靈通
            無邊的佛法神通廣大，誠心地祈求終能得到感應。
            大難禍患不相同
            面臨困難的時候會有不同的遭遇與結果。
            紅日當空常照耀
            紅紅的太陽高掛天空照耀。
            還有貴人到家堂
            有貴人會來到家裡。

             籤意分享

            如果誠心誠意懇求神明與菩薩的幫忙，神明會感受到你的誠心幫助你渡過難關。這與沒有神明的幫忙時，遭遇困難的境遇是很不相同地。有神明的幫助，可以逢凶化吉，神明的力量就像日正當中的陽光照耀四周一樣，光明無比會庇佑誠心祈願的你，而且還會有貴人幫助你渡過難關。

            抽重此籤當誠心誠意像神明祈求幫助，若得到神明應允，就可以感應到無邊的神力幫助，還會引導貴人協助你你完成心願。不過既然是懇求神明的幫助，完成心願時可別忘記要向神明感恩還願。

            一般籤詩常見「月出光輝」，而此首籤詩是「紅日當空」，其光亮程度的差異巨大，所以佛法靈通的力量怎容輕視。
            """
        case 22:
            mUITextView.text = """
            六十甲子籤

            第二二籤【丁未】
             ●●●　○○●
            屬水利冬　宜其北方

            太公家業八十成
            月出光輝四海明
            命內自然逢大吉
            茅屋中間百事亨

            籤解

            凡事　先呆。得貴人吉。
            作事　先呆後吉。
            家事　門庭吉慶。
            家運　安居春風。
            婚姻　和合。
            求兒　平正。
            六甲　生男。(子媳虛)
            求財　先微後進。
            功名　晚可有進。
            歲君　順利。
            治病　老不畏。少不好。
            出外　平平。(有貴人提攜。得利)
            經商　有利益。
            來人　月光到。
            行舟　晚運可通。
            移居　好。
            失物　月光在。月暗無。
            求雨　上下弦。
            官事　和合好。(貴人了錢。完局)
            六畜　納有利。
            耕作　允好。
            築室　百事吉慶。
            墳墓　有餘裕哉。
            討海　先無後利。
            作塭　晚者大利
            魚苗　有利可得。
            月令　不遂。
            尋人　慢至。
            遠信　音信慢至。

            籤詩語譯

            太公家業八十成
            姜太公在八十歲時才有所成就。
            月出光輝四海明
            月亮出來光輝照亮四海。
            命內自然逢大吉
            是命中注定的，自然而然會遇到好事。
            茅屋中間百事亨
            在還沒成功之前暫時住在茅屋裡，總有一天什麼事情都會變得順利的。

             籤意分享

            這首籤詩勉勵當事人不要擔心時運不佳、運勢晚成，像姜太公在八十幾歲才得到文王的賞識，所以雖然事業晚成，但只要等待自己時運的到來，自然就會像會像月亮出來，四處充滿光輝般地，前途光明。目前求籤者的情形則是「茅屋中間」，就像住在茅屋中般地清貧，安貧樂道、清心寡欲是目前處事的方法，等到時機到來，自然而然會有所成就。
            """
        case 23:
            mUITextView.text = """
            六十甲子籤

            第二三籤【丁酉】
             ○○●　○●●
            屬火利夏　宜其南方

            欲去長江水闊茫
            前途未遂運未通
            如今絲綸常在手
            只恐魚水不相逢

            籤解

            凡事　不可作。和者吉。
            作事　遲緩。
            家事　門庭失運。了錢。
            家運　崎嶇不順。
            婚姻　大吉。
            求兒　不可。
            六甲　生男。(子虛。先女後男)
            求財　先失運。後有利。
            功名　無望。
            歲君　順利。
            治病　了錢。尾過漸好。
            出外　不可。
            經商　顛倒。
            來人　未日(半月)到。
            行舟　運途不佳。
            移居　不佳。等待。
            失物　尋不見。
            求雨　上下弦。
            官事　尾勝吉。(了錢完局)
            六畜　不可納。
            耕作　不合時運。微利。
            築室　不可。且慢。
            墳墓　地氣不佳。
            討海　運途不佳。
            作塭　防魚失。求微利。
            魚苗　後日可得小利。
            月令　不遂。
            尋人　緩。
            遠信　音信無到。


            籤詩語譯

            欲去長江水闊茫
            想要前往河面寬闊的長江。
            前途未遂運未通
            前途不順利，運氣還沒到來。
            如今絲綸常在手
            現在常常手上拿著釣魚線，
            只恐魚水不相逢
            只怕就像魚遇不到水一樣，白費工夫。

             籤意分享

            目前的前途與運勢不好，就像要去廣闊的長江，但是卻沒有辦法到達，既然不能到長江，即使有釣竿在手，恐怕也釣不到魚。所以向神明所詢問的事情不是自己可以發揮的機會。

            「如魚得水」是劉備得諸葛孔明為軍師時，向關張二結義兄弟說明自己得以抒發志向的心情，此籤「魚水不相逢」表示即使有著才能或有意發展，但還沒有到達發揮的餘地，只能靜心等待時機的到來。

            問感情，表示目前這個人不是自己的良緣對象。
            """
        case 24:
            mUITextView.text = """
            六十甲子籤

            第二四籤【丁亥】
            ●●● ●○●
            屬土利年　四方皆宜

            月出光輝四海明
            前途祿位見太平
            浮雲掃退終無事
            可保禍患不臨身

            籤解

            凡事　緊和平。了錢工。
            作事　月光即成
            家事　大進圓滿。
            家運　平安
            婚姻　和合
            求兒　好。
            六甲　先男。(先女後男)
            求財　少有。
            功名　顯榮祖宗。恐有變。
            歲君　中和
            治病　陰邪祟。求神安
            出外　先少利。後可得
            經商　無利。
            來人　月光到。
            行舟　財輕。平平。
            移居　后即可以
            失物　月光在。月暗無。
            求雨　未有。
            官事　冒險。有貴人。好。
            六畜　可納。
            耕作　平正。
            築室　漸且候。待日期
            墳墓　后大吉
            討海　無大財。陰作祟。
            作塭　途中防水微利。
            魚苗　先微后有。
            月令　不遂。
            尋人　可回。
            遠信　佳音速至。

            籤詩語譯

            月出光輝四海明
            月亮的光輝照亮四海，一片明亮。
            前途祿位見太平
            前途與功名都會化險為夷，不會受影響。
            浮雲掃退終無事
            遮住月亮的浮雲散去，終會平安無事。
            可保禍患不臨身
            神明會保佑，災難不會降臨。

             籤意分享

            目前雖然遇到困難，但是有神明保佑災禍不會降臨的，最後就像遮住月亮的浮雲散去了，月光照亮四處般地，困難得以化解，前途和官位都可以化險為夷，平安無事。這首籤詩為先經歷險境，後因神明保佑得以平安脫險。

            若問時機為「月出」，指農曆十五或中秋。但也可朝向遇女性貴人困難得解的方向思考。
            """
        case 25:
            mUITextView.text = """
            六十甲子籤

            第二五籤【戊子】
             ●○○　○●●
            屬火利夏　宜其南方

            總是前途莫心勞
            求神問聖枉是多
            但看雞犬日過後
            不須作福事如何

            籤解

            凡事　作可作。和者吉。
            作事　慢成。
            家事　平平。
            家運　宅舍難居
            婚姻　不好難成。
            求兒　不可。
            六甲　謝良愿。求神佛。
            求財　微利不吉。
            功名　未就。
            歲君　中和
            治病　運深。酉戌不畏。
            出外　不可。
            經商　新業差。舊業平
            來人　戌日到。
            行舟　財輕微利。
            移居　且慢。
            失物　己丑卯戌日在。
            求雨　甲子乙丑日。不久。
            官事　宜和。(必受災殃)
            六畜　不可。
            耕作　只收半。
            築室　不美。成者安。
            墳墓　地勢不合。
            討海　和者好。不和呆。
            作塭　只求微利。
            魚苗　小利。
            月令　下半年平安。
            尋人　慢至。
            遠信　音信遲延。

            籤詩語譯

            總是前途莫心勞
            不用費心前途的事情。
            求神問聖枉是多
            就算求神問卜也是白費力氣。
            但看雞犬日過後
            等到雞犬日過了。
            不須作福事如何
            不必祈求神明，就可以明白事情的面貌了。

             籤意分享

            對於所求的事情不用費心求神，這件事「雞犬日」之後，就可以明白事情真相或結果了。雞犬就是酉戌，可以做時、日、月、年解，時是酉時（下午五至七點）、戌時（下午七至九點），日的話可對照農民曆查詢，月份就是指農曆的八、九月，若為年份就是雞、狗年。
            """
        case 26:
            mUITextView.text = """
            六十甲子籤

            第二六籤【戊寅】
             ●○●　●○●
            屬土利年　四方皆宜

            選出牡丹第一枝
            勸君折取莫遲疑
            世間若問相知處
            萬事逢春正及時

            籤解

            凡事　春吉冬呆。
            作事　春天可成
            家事　綿綿齊美
            家運　安居春風。
            婚姻　成者好。
            求兒　平平。
            六甲　先男後女。
            求財　財源廣進。
            功名　朱衣點頭。(及第)
            歲君　順吉。
            治病　平安。(婦忌十一月男能十二月。老危少安)
            出外　平安有。春滿載
            經商　逢春發無窮
            來人　月光到。
            行舟　財利平平
            移居　平安
            失物　在東方。緊尋在。
            求雨　必到。
            官事　必和。(必勝)
            六畜　可納
            耕作　早冬好。下冬呆。
            築室　逢春大吉。
            墳墓　真龍正穴
            討海　春有冬無。
            作塭　逢春利。外微利。
            魚苗　三月吉四月小吉。
            月令　不遂。逢春如意。
            尋人　月前得回。
            遠信　源源而來。

            籤詩語譯

            選出牡丹第一枝
            在牡丹中選擇最好的一枝。
            勸君折取莫遲疑
            勸你在花開的時候趕快摘，不要再遲疑了。
            世間若問相知處
            如果你要問世間的知己在哪裡。
            萬事逢春正及時
            做事要趁著春天的時候。

             籤意分享

            春天是牡丹花開的時候，所以要摘牡丹花要趁著春天花開的時候，如果錯過時機就沒有花可以摘了，所以求籤者要問的事情，就像摘取最美的牡丹花一樣，要趁著春天來的時機進行。
            """
        case 27:
            mUITextView.text = """
            六十甲子籤

            第二七籤【戊辰】
            ○○○　●○○
            屬木利春　宜其東方

            君爾寬心且自由
            門庭清吉家無憂
            財寶自然終吉利
            凡事無傷不用求

            籤解

            凡事　有財允成。不畏。
            作事　成功。
            家事　團圓且喜。
            家運　可得興旺。
            婚姻　大吉。
            求兒　不可。
            六甲　添得弄璋之喜。
            求財　先輕後得。
            功名　晚到。
            歲君　淡淡。(未安)
            治病　得安。
            出外　先呆後好。
            經商　獲如意。後大利。
            來人　難在。
            行舟　先平安後大進。
            移居　慢即吉。
            失物　自回。
            求雨　尚未有。
            官事　有貴人。平安。
            六畜　興旺
            耕作　早冬微。晚冬好。
            築室　喜得瑞氣盈門。
            墳墓　地運大進益。
            討海　先無後有。
            作塭　免介意。有利得。
            魚苗　先微后有。
            月令　平安。
            尋人　不見。難尋。
            遠信　佳音速至。


            籤詩語譯

            君爾寬心且自由
            你放寬心情，自由自地生活。
            門庭清吉家無憂
            家裡平安不用擔心。
            財寶自然終吉利
            財寶的事情最後終會轉為順利。
            凡事無傷不用求
            不必傷腦筋，也不用求神明幫助。

             籤意分享

            順應環境變化，不要強求，安心守分地過生活，這樣做不會對自己造成損傷，所以不必費心向神佛祈求願望實現，只要是命中該你得到的東西，自然會得到。
            """
        case 28:
            mUITextView.text = """
            六十甲子籤

            第二八籤【戊午】
            ●●○　○●●
            屬火利夏　宜其南方

            於今莫作此當時
            虎落平陽被犬欺
            世間凡事何難定
            千山萬水也遲疑

            籤解

            凡事　後成吉。
            作事　難成。
            家事　恐防大害。
            家運　人作怪。恐風波。
            婚姻　不吉。(女帶殺氣)
            求兒　不可。
            六甲　須防難產。
            求財　不得。
            功名　無。
            歲君　平平。
            治病　運犯劫。被邪欺。寅戌日過不畏。
            出外　被人欺。
            經商　呆人欺。難如意。
            來人　難在。
            行舟　無利可得。(了財帛)
            移居　大不好。
            失物　難尋。
            求雨　不日到。
            官事　被官欺。大了錢。
            六畜　不安。
            耕作　半收。
            築室　不可。(犯殺)
            墳墓　犯六十年。緊移。
            討海　無利可得。
            作塭　剋口舌。忍耐好。
            魚苗　不利。
            月令　九不畏。防人欺。
            尋人　難得。
            遠信　魚沉消息。

            籤詩語譯

            於今莫作此當時
            現在的情況已經不能和以前得意的時候相提並論了。
            虎落平陽被犬欺
            虎落平陽，會被狗欺負。
            世間凡事何難定
            世間的事情很難簡單地說明。
            千山萬水也遲疑
            就像要越過千山萬水一樣，會歷經種種困難，不遲疑不行吧。

             籤意分享

            現在正是運氣不佳的時候，與過去的風光歲月不能相提並論，就像勇猛的老虎落難也會被狗欺負，世間的事情很難簡單地說清楚，目前想做的事情如果做了會歷經種種困難會被欺負，所以還是放棄吧。目前不適合遠行或做改變。


            """
        case 29:
            mUITextView.text = """
            六十甲子籤

            第二九籤【戊申】
            ●●○　○●○
            屬土利年　四方皆宜

            枯木可惜未逢春
            如今返在暗中藏
            寬心且守風霜退
            還君依舊作乾坤

             未逢春二字，另有改作逢春時一說。
            反且二字，另有改作返還一說。

            籤解

            凡事　待時。
            作事　難成。
            家事　平安。
            家運　合家興旺。(運滯)
            婚姻　平平。
            求兒　不吉。
            六甲　先男後女。
            求財　新業差。舊業平。
            功名　不就。
            歲君　平正。
            治病　運暗。逢春出運。(老凶)
            出外　不可。
            經商　須守安命不可。
            來人　未日(半月)到。
            行舟　無利可得。
            移居　不吉。
            失物　援尋。(必在)
            求雨　久不至。
            官事　拖尾。
            六畜　不可。
            耕作　無利半收。
            築室　漸待開春。
            墳墓　地運後必發。
            討海　依舊吉。新不利。
            作塭　返原運。暗無利。
            魚苗　春有利。夏失時。
            月令　不遂。
            尋人　行人待。
            遠信　音信速至。

            籤詩語譯

            枯木可惜未逢春
            就像是枯了的樹木在還沒遇到春天之前，沒有發芽的機會。
            如今反在暗中藏
            目前所祈求的事情的真相還隱藏於黑暗中。
            寬心且守風霜退
            不如放寬心不必想要做什麼，等待困難與阻礙過去了。
            還君依舊作乾坤
            到時候你就可以闖下一片天地。

             籤意分享

            此籤表示當事人的時運未至、且對於事情的真相不明，就像樹木處於寒冷的冬天，還不是發芽的時候，此時不適合貿然做決定或改變，靜心等待時機到來，到時候可以有一番作為。時不我與，不適合做任何新計畫或改變。
            """
        case 30:
            mUITextView.text = """
            六十甲子籤

            第三十籤【戊戌】
            ●●●　○●○
            屬木利春　宜其東方

            漸漸看此月中和
            過後須防未得高
            改變顏色前途去
            凡事必定見重勞

            籤解

            凡事　了錢。甚不好。
            作事　難成。
            家事　門有險。了錢災。
            家運　了錢難安。
            婚姻　不成。
            求兒　不可。且慢。
            六甲　空孕。勿躁。
            求財　無利。
            功名　不成難進。
            歲君　不遂。
            治病　險。半月不癒。重。
            出外　不可出。
            經商　經營不就。
            來人　月光到。
            行舟　了工了本。
            移居　不可。
            失物　難尋。
            求雨　久不至。
            官事　枉費了錢。
            六畜　不佳。
            耕作　了工後。半年好。
            築室　不安。
            墳墓　地氣不佳。
            討海　了工。無利。
            作塭　枉費徒勞。失利。
            魚苗　無望。
            月令　不遂。
            尋人　行人漸回。
            遠信　音信有變。

            籤詩語譯

            漸漸看此月中和
            月亮漸漸地在變化，到了月中就可以看到圓滿的月亮。
            過後須防未得高
            但是月中過後，月亮由圓轉缺，所以做事要防範志得意滿、心高氣傲帶來的損失。
            改變顏色前途去
            自我檢討，好好調整自己，才能迎向美好前途發展（擺臭臉是不行的）。
            凡事必定見重勞
            如果自己不好好改變，依然故我，這樣必定會做事白費力氣。

             籤意分享

            月亮的陰晴圓缺是固定的道理，人也是一樣，驕傲自滿則會招致失敗，所以求得此籤當要注意自己的言行舉止，要謙虛待人，才能避免失去目前的成果。如果不知修正自己，未來將會勞心勞力卻沒有成果。

            此籤有運勢正好的時機將去，未來做事不能再靠運氣了，當事人要自己努力才能挽回頹勢，如果還是按照目前的作法，將會徒勞無功。
            """
        case 31:
            mUITextView.text = """
            六十甲子籤

            第三一籤【己丑】
            ○●○　●○●
            屬火利夏　宜其南方

            綠柳蒼蒼正當時
            任君此去作乾坤
            花果結實無殘謝
            福祿自有慶家門

            籤解

            凡事　得利。
            作事　成功。
            家事　瓜瓞綿綿。
            家運　世世興旺。
            婚姻　好結尾。
            求兒　好。
            六甲　先女後男。(生男)
            求財　用心即有。(春敗好。在家好)
            功名　差人來報喜。
            歲君　大吉。
            治病　喜遇良醫。
            出外　大吉可進。
            經商　大發資財。
            來人　立即到。
            行舟　財發萬金。
            移居　適其所哉。
            失物　急尋可有。
            求雨　及時。
            官事　緊完局。了錢。
            六畜　可納。
            耕作　好。
            築室　好。
            墳墓　幸喜得遇其穴。
            討海　財發萬金
            作塭　黃金萬貫可喜。
            魚苗　見春可喜。
            月令　不遂。
            尋人　必在。
            遠信　音信有回。

            籤詩語譯

            綠柳蒼蒼正當時
            現在就好比正是柳樹綠油油的時候。
            任君此去作乾坤
            也是你發揮所長，創下一番天地的時候。
            花果結實無殘謝
            就像樹木開花之後結果了，過去辛勤的付出會有收穫，沒有白費力氣。
            福祿自有慶家門
            福與祿會自然到家門來。

             籤意分享

            得此籤表示正是發揮長才，只要好好努力會得到好的結果。所祈求的願望努力可以實現。
            """
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

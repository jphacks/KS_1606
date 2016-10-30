//
//  File.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import Foundation

class MenuModel: NSObject {
    static let sharedInstance = MenuModel()
    private override init(){ }
    
    var menus = [Menu]()

    static func setMenus(){
        sharedInstance.menus.append(Menu(id: 0, name: "テキサスバーガー", price: 490, imageUrl: "food1", category: 0))
        sharedInstance.menus.append(Menu(id: 1, name: "ビッグマック", price: 380, imageUrl: "food2", category: 0))
        sharedInstance.menus.append(Menu(id: 2, name: "ダブルチーズバーガー", price: 320, imageUrl: "food3", category: 0))
        sharedInstance.menus.append(Menu(id: 3, name: "てりやきマックバーガー", price: 320, imageUrl: "food4", category: 0))
        sharedInstance.menus.append(Menu(id: 4, name: "フィレオフィッシュ", price: 320, imageUrl: "food5", category: 0))
        sharedInstance.menus.append(Menu(id: 5, name: "チキンフィレオ", price: 350, imageUrl: "food6", category: 0))
        sharedInstance.menus.append(Menu(id: 6, name: "ベーコンレタスバーガー", price: 350, imageUrl: "food7", category: 0))
        sharedInstance.menus.append(Menu(id: 7, name: "えびフィレオ", price: 380, imageUrl: "food8", category: 0))
        sharedInstance.menus.append(Menu(id: 8, name: "クォーターパウンダー", price: 400, imageUrl: "food9", category: 0))
        sharedInstance.menus.append(Menu(id: 9, name: "ダブルチーズバーガー", price: 520, imageUrl: "food10", category: 0))
        sharedInstance.menus.append(Menu(id: 10, name:"ホットココア", price: 290, imageUrl: "drink1", category: 1))
        sharedInstance.menus.append(Menu(id: 11, name: "ロイヤルミルクティー", price: 290, imageUrl: "drink2", category: 1))
        sharedInstance.menus.append(Menu(id: 12, name: "コカ・コーラ・ゼロ", price: 220, imageUrl: "drink3", category: 1))
        sharedInstance.menus.append(Menu(id: 13, name: "コカ・コーラ", price: 220, imageUrl: "drink4", category: 1))
        sharedInstance.menus.append(Menu(id: 14, name: "スプライト", price: 220, imageUrl: "drink5", category: 1))
        sharedInstance.menus.append(Menu(id: 15, name: "ファンタグレープ", price: 220, imageUrl: "drink6", category: 1))
        sharedInstance.menus.append(Menu(id: 16, name: "ファンタメロン", price: 220, imageUrl: "drink7", category: 1))
        sharedInstance.menus.append(Menu(id: 17, name: "Qoo", price: 220, imageUrl: "drink8", category: 1))
        sharedInstance.menus.append(Menu(id: 18, name: "爽健美茶", price: 220, imageUrl: "drink9", category: 1))
        sharedInstance.menus.append(Menu(id: 19, name: "アイスティー", price: 220, imageUrl: "drink10", category: 1))
        sharedInstance.menus.append(Menu(id: 20, name: "コーンクリームスープ", price: 290, imageUrl: "sidemenu1", category: 2))
        sharedInstance.menus.append(Menu(id: 21, name: "ミネストローネ", price: 290, imageUrl: "sidemenu2", category: 2))
        sharedInstance.menus.append(Menu(id: 22, name: "ハロウィン魔女ポテト", price: 330, imageUrl: "sidemenu3", category: 2))
        sharedInstance.menus.append(Menu(id: 23, name: "ベーコンポテトパイ", price: 150, imageUrl: "sidemenu4", category: 2))
        sharedInstance.menus.append(Menu(id: 24, name: "ハロウィンポテトパイ", price: 330, imageUrl: "sidemenu5", category: 2))
        sharedInstance.menus.append(Menu(id: 25, name: "マックフライポテト", price: 270, imageUrl: "sidemenu6", category: 2))
        sharedInstance.menus.append(Menu(id: 26, name: "チキンマックナゲット", price: 200, imageUrl: "sidemenu7", category: 2))
    }
    
    static func getIemsForCategory(category:Int) -> [Menu] {
        var items = [Menu]()
        for item in MenuModel.sharedInstance.menus{
            if item.category == category{
                items.append(item)
            }
        }
        return items
    }
    
    
    
}

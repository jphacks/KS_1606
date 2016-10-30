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
        sharedInstance.menus.append(Menu(id: 0, name: "チーズバーガー", price: 100, imageUrl: "food1", category: 0))
        sharedInstance.menus.append(Menu(id: 1, name: "トマトバーガー", price: 200, imageUrl: "food2", category: 0))
        sharedInstance.menus.append(Menu(id: 2, name: "なすバーガー", price: 300, imageUrl: "food3", category: 0))
        sharedInstance.menus.append(Menu(id: 3, name: "コーラ", price: 100, imageUrl: "drink1", category: 1))
        sharedInstance.menus.append(Menu(id: 4, name: "ジンジャーエール", price: 200, imageUrl: "drink2", category: 1))
        sharedInstance.menus.append(Menu(id: 5, name: "なっちゃん", price: 300, imageUrl: "drink3", category: 1))
        sharedInstance.menus.append(Menu(id: 6, name: "ポテト", price: 100, imageUrl: "sidemenu1", category: 2))
        sharedInstance.menus.append(Menu(id: 7, name: "ナゲット", price: 200, imageUrl: "sidemenu2", category: 2))
        sharedInstance.menus.append(Menu(id: 8, name: "なす", price: 300, imageUrl: "sidemenu3", category: 2))
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

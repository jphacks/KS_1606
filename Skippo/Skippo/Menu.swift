//
//  Menu.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import Foundation

class Menu: NSObject {
    var id = 0
    var name = ""
    var price = 0
    var imageUrl = ""
    var category = 0
    
    override init() {}
    
    convenience init(id:Int,name:String,price:Int,imageUrl:String,category:Int) {
        self.init()
        self.id = id
        self.name = name
        self.price = price
        self.imageUrl = imageUrl
        self.category = category
    }
}

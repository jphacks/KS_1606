//
//  Total.swift
//  Skippo
//
//  Created by maekawakazuma on 2016/11/04.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class Total:NSObject{
    var menu:Menu
    var num:Int
    var subtotal:Int{
        return menu.price * num
    }
    
    override init() {
        menu = Menu()
        num = 0
    }
    convenience init(id:String,num:Int) {
        self.init()
        if let m = MenuModel.getMenuById(Int(id)!) {
            print(m.name)
            print(num)
            self.menu = m
            self.num = num
        }
    }
    
}

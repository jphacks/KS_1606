//
//  Store.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import Foundation

class  Store:NSObject{
    var id = 0
    var name = ""
    var imageUrl = ""
    
    override init(){ }
    
    convenience init(id:Int,name:String,imageUrl:String){
        self.init()
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
    }
}

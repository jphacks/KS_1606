//
//  StoreModel.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import Foundation

class StoreModel:NSObject{
    static let sharedInstance = StoreModel()
    private override init(){}
    
    var stores = [Store]()
    
    static func setStore(){
        sharedInstance.stores.append(Store(id: 6, name: "McDonald's", imageUrl: "store6"))
        sharedInstance.stores.append(Store(id: 1, name: "SUBWAY", imageUrl: "store2"))
        sharedInstance.stores.append(Store(id: 2, name: "Domino's Pizza", imageUrl: "store3"))
        sharedInstance.stores.append(Store(id: 3, name: "KFC", imageUrl: "store4"))
        sharedInstance.stores.append(Store(id: 4, name: "STARBUCKS COFFEE", imageUrl: "store5"))
    }
    
}

//
//  ResultModel.swift
//  Skippo
//
//  Created by maekawakazuma on 2016/11/04.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import Foundation

class ResultModel:NSObject{
    
    static let sharedInstance = ResultModel()
    fileprivate override init(){ }
    
    var subtotals = [Total]()
    var total:Int{
        var total = 0
        for subtotal in subtotals{
            total += subtotal.subtotal
        }
        return total
    }
    
    
    static func setResult(idAndNums:[String:Int]){
        let keys = idAndNums.keys
        var subtotal = [Total]()
        for key in keys{
            subtotal.append(Total(id: key, num: idAndNums[key]!))
        }
        sharedInstance.subtotals = subtotal
        
    }
    
    
    
}

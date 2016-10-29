//
//  MenuCollectionViewCell.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/29.
//
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var numOrderLabel: UILabel!
    var countOrder:Int = 0
    @IBAction func minusButton(_ sender: Any) {
        countOrder -= 1
        numOrderLabel.text = String(countOrder)
    }
    @IBAction func plusButton(_ sender: Any) {
        countOrder += 1
        numOrderLabel.text = String(countOrder)
    }
}

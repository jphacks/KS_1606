//
//  MenuDetailViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/29.
//
//

import UIKit

class MenuDetailViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var category = -1
    var items = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        items = MenuModel.getIemsForCategory(category: category)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menu", for: indexPath) as! MenuCollectionViewCell
        cell.menuImage.image = UIImage(named: "hamburger")
        cell.name.text = items[indexPath.row].name
        cell.price.text = items[indexPath.row].price.description
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGFloat = collectionView.frame.size.width / 2 - 10
        return CGSize(width: cellSize, height: cellSize)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


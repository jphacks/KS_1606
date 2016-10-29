//
//  FavoriteViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/29.
//
//

import UIKit

class FavoriteViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    @IBOutlet weak var collectionView: UICollectionView!
    private var numbers = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numbers = loadTestData()
        addEventListner()
    }
    
    //ダミーデータです
    private func loadTestData() -> [Int]{
        
        for i in 1...100 {
            numbers.append(i)
        }
        return numbers
    }
    
    private func addEventListner() {
        //let longPressGesture = UILongPressGestureRecognizer(target: self,action: #selector(self.handleLongGesture(_:)))
        //collectionView.addGestureRecognizer(longPressGesture)
    }
    
    //ここがポイントです
    func handleLongGesture(gesture: UILongPressGestureRecognizer) {
        
        switch(gesture.state) {
            
        case UIGestureRecognizerState.began:
            guard let selectedIndexPath = collectionView.indexPathForItem(at: gesture.location(in: collectionView)) else {
                break
            }
            collectionView.beginInteractiveMovementForItem(at: selectedIndexPath)
            
        case UIGestureRecognizerState.changed:
            collectionView.updateInteractiveMovementTargetPosition(gesture.location(in: gesture.view!))
            
        case UIGestureRecognizerState.ended:
            collectionView.endInteractiveMovement()
            
        default:
            collectionView.cancelInteractiveMovement()
        }
    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCell", for: indexPath) as! FavoriteStoreCollectionViewCell
        cell.favoriteStore.image = UIImage(named: "cat")
        
        return cell
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

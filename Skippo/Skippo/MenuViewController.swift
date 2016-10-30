//
//  MenuViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/29.
//
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    var foodVC:MenuDetailViewController?
    var drinkVC:MenuDetailViewController?
    var sidemenuVC:MenuDetailViewController?
    
    
    
    var pageMenu : CAPSPageMenu?
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        foodVC = storyboard.instantiateViewController(withIdentifier: "menu") as? MenuDetailViewController
        drinkVC = storyboard.instantiateViewController(withIdentifier: "menu") as? MenuDetailViewController
        sidemenuVC = storyboard.instantiateViewController(withIdentifier: "menu") as? MenuDetailViewController
        
        foodVC?.category = 0
        drinkVC?.category = 1
        sidemenuVC?.category = 2
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        foodVC?.title = "Food"
        drinkVC?.title = "Drink"
        sidemenuVC?.title = "sidemenu"
        
        controllerArray.append(foodVC!)
        controllerArray.append(drinkVC!)
        controllerArray.append(sidemenuVC!)
        // Do any additional setup after loading the view.
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.0),
            .menuHeight(30),
            .menuItemWidth(80),
            .bottomMenuHairlineColor(UIColor(aHexStr: "#8E8D8B")),
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor.white),
            .selectionIndicatorColor(UIColor(aHexStr: "#004056") ),
            .centerMenuItems(true),
            .selectedMenuItemLabelColor(UIColor(aHexStr: "#0078A2")),
            .unselectedMenuItemLabelColor(UIColor(aHexStr: "#8E8D8B"))
        ]
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.mainView.addSubview(pageMenu!.view)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "qrcodeSegue"{
            let vc = segue.destination as! QRViewController
            vc.orderList = sender as! [[Int:Int]]
        }
    }
    

    @IBAction func nextButton(_ sender: Any) {
        var orderList = [[Int:Int]]()
        guard let foodList = foodVC?.getOrderList() else {return}
        guard let drinkList = drinkVC?.getOrderList() else {return}
        guard let sidemenuList = sidemenuVC?.getOrderList() else {return}
        
        orderList = [foodList,drinkList,sidemenuList]

        
        performSegue(withIdentifier: "qrcodeSegue", sender: orderList)
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

//
//  TopViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/29.
//
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    var pageMenu : CAPSPageMenu?
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nearByVC = storyboard.instantiateViewController(withIdentifier: "NearBy") as! NearByViewController
        let newestVC = storyboard.instantiateViewController(withIdentifier: "NearBy") as! NearByViewController
        let favoriteVC = storyboard.instantiateViewController(withIdentifier: "NearBy") as! NearByViewController
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        nearByVC.title = "Nearby"
        newestVC.title = "Newest"
        favoriteVC.title = "Favotite"
        
        controllerArray.append(nearByVC)
        controllerArray.append(newestVC)
        controllerArray.append(favoriteVC)
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
    
    @IBAction func NearByButton(_ sender: Any) {
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

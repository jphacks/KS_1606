//
//  ResultViewController.swift
//  Skippo
//
//  Created by maekawakazuma on 2016/10/29.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var value:String = ""
    var idAndNums = [String:Int]()
    let resultModel = ResultModel.sharedInstance
    
    @IBOutlet weak var totalLabel: UILabel!
    

    @IBOutlet weak var topButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topButton.backgroundColor = UIColor(aHexStr: "A25300")
        
    
        
        if let dataFromString = value.data(using: .utf8) {
            let json = JSON(data: dataFromString)
            guard let dict = json.dictionary else { return }
            let keys = dict.keys
            for k in keys{
                idAndNums[k] = dict[k]?.intValue

            }
            ResultModel.setResult(idAndNums: idAndNums)
            
            totalLabel.text = "¥" + resultModel.total.description
            
            
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension ResultViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultModel.subtotals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath) as! ResultTableViewCell
        
        cell.menuTitle.text = resultModel.subtotals[indexPath.row].menu.name
        cell.price.text = "¥" + resultModel.subtotals[indexPath.row].subtotal.description
        cell.numbers.text = "x" + resultModel.subtotals[indexPath.row].num.description
        
        
        return cell
    }

}




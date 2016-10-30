//
//  QRViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import UIKit
import CoreImage

class QRViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var qrImageView: UIImageView!
    
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var orderList = [[Int:Int]]()
    var list = [String:Int]()
    var ids = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var json: String = ""
        
        for category in orderList{
           let keys = category.keys
            for key in keys{
                list[key.description] = category[key]
                ids.append(key)
            }
        }
        
        do {
            // Dict -> JSON
            let jsonData = try JSONSerialization.data(withJSONObject: list, options: [])
            
            json = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)! as String
        } catch {
            print("Error!: \(error)")
        }
        
        let data = json.data(using: String.Encoding.utf8)!
        
        let qr = CIFilter(name: "CIQRCodeGenerator", withInputParameters: ["inputMessage": data, "inputCorrectionLevel": "M"])!
        let sizeTransform = CGAffineTransform(scaleX: 10, y: 10)
        let qrImage = qr.outputImage?.applying(sizeTransform)
        
        self.qrImageView.image = UIImage(ciImage: qrImage!)
        
        totalPriceLabel.text = "¥" + calcTotal().description

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderList", for: indexPath) as! OrderListTableViewCell
        
        let menu = MenuModel.getItemById(id: ids[indexPath.row])
        let rowPrice = menu.price * list[ids[indexPath.row].description]!

        
        cell.nameLabel.text = menu.name
        cell.priceLabel.text = "¥" + rowPrice.description
        cell.numOrderLabel.text = "×" + (list[ids[indexPath.row].description]?.description)!
        return cell
    }
    
    
    func calcTotal()->Int{
        var totalPrice = 0
        
        for id in ids{
            let menu = MenuModel.getItemById(id: id)
            let rowPrice = menu.price * list[id.description]!
            totalPrice += rowPrice
        }
        return totalPrice
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

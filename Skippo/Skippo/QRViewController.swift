//
//  QRViewController.swift
//  Skippo
//
//  Created by 金築良磨 on 2016/10/30.
//
//

import UIKit
import CoreImage

class QRViewController: UIViewController {
    
    @IBOutlet weak var qrImageView: UIImageView!
    
    
    var orderList = [[Int:Int]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        var json: String = ""
        var list = [String:Int]()
        
        
        for category in orderList{
           let keys = category.keys
            for key in keys{
                list[key.description] = category[key]
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

//
//  ViewController.swift
//  Skippo
//
//  Created by maekawakazuma on 2016/10/29.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit
import QRCodeReader
import AVFoundation
import AudioToolbox

class ViewController: UIViewController,QRCodeReaderViewControllerDelegate,AVAudioPlayerDelegate {
    
    
    
    lazy var readerVC = QRCodeReaderViewController(builder: QRCodeReaderViewControllerBuilder {
        $0.reader = QRCodeReader(metadataObjectTypes: [AVMetadataObjectTypeQRCode], captureDevicePosition: .back)
    })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } 
    
    //    let sb = UIStoryboard()
    @IBAction func startScan(_ sender: AnyObject) {
        
        readerVC.delegate = self
        
        // Or by using the closure pattern
        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
            print(result)
        }
        
        // Presents the readerVC as modal form sheet
        readerVC.modalPresentationStyle = .formSheet
        present(readerVC, animated: true, completion: nil)
        
        
    }
    
    func readerDidCancel(_ reader: QRCodeReaderViewController) {
        reader.stopScanning()
        
        dismiss(animated: true, completion: nil)
    }
    
    func reader(_ reader: QRCodeReaderViewController, didSwitchCamera newCaptureDevice: AVCaptureDeviceInput) {
        if let cameraName = newCaptureDevice.device.localizedName {
            print("Switching capturing to: \(cameraName)")
        }
    }
    
    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
        reader.stopScanning()
        

        var soundIdRing:SystemSoundID = 0
        
        if let soundUrl:NSURL = NSURL.fileURL(withPath: Bundle.main.path(forResource: "decision8", ofType:"mp3")!) as NSURL?{
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
        self.performSegue(withIdentifier: "showResult", sender: nil)
        dismiss(animated: true, completion: nil)
    }
    
    
    
}


//
//  ViewController.swift
//  Lighter iPhone
//
//  Created by Artur Holiev on 01.08.2022.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    var islightOn = false
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        islightOn = !islightOn
      
        updateUI()
        
    }
    
    func updateUI() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            if islightOn {
                view.backgroundColor = .white
                do {
                    try dev.lockForConfiguration()
                    dev.torchMode = .on
                    dev.unlockForConfiguration()
                }
                catch {
                    print(error)
                }
            }
            else{
                view.backgroundColor = .black
                do {
                    try dev.lockForConfiguration()
                    dev.torchMode = .off
                    dev.unlockForConfiguration()
                }
                catch {
                    print(error)
                }
            }
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}


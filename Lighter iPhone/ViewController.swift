//
//  ViewController.swift
//  Lighter iPhone
//
//  Created by Artur Holiev on 01.08.2022.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = false
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        lightOn = !lightOn
      
        updateUI()
        
    }
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
        }
        else {
            view.backgroundColor = .black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


}


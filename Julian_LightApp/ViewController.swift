//
//  ViewController.swift
//  Julian_LightApp
//
//  Created by Julian Jackson on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    fileprivate func updateUI() {
        if lightOn{
            view
                .backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func button_pressed(_ sender: Any) {
        lightOn.toggle()

        updateUI()
        }
    }



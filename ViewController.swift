//
//  ViewController.swift
//  IntelligentHome
//
//  Created by Fernando F Duarte on 13/08/18.
//  Copyright © 2018 Fernando F Duarte. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var switchLuz: UISwitch!
    @IBOutlet weak var imgViewLamp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgViewLamp.contentMode = .scaleAspectFit
        switchLuz.setOn(false, animated: false)
        sendFirebase(mySwitch: switchLuz)
        switchLuz.addTarget(self, action: #selector(switchChange(mySwitch:)), for: .valueChanged)
        
    }
    
    
    
    @objc func switchChange(mySwitch: UISwitch) {
        sendFirebase(mySwitch: mySwitch)
    }
    
    func sendFirebase(mySwitch: UISwitch) {
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        if(mySwitch.isOn) {
            ref.setValue(["Luz": 1])
            imgViewLamp.image = UIImage(named: "on")
        } else {
            ref.setValue(["Luz": 0])
            imgViewLamp.image = UIImage(named: "off")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


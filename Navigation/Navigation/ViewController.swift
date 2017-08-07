//
//  ViewController.swift
//  Navigation
//
//  Created by 정은아 on 2017. 8. 7..
//  Copyright © 2017년 정은아. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    
    var isOn = true
    
    @IBOutlet weak var txMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgView.image = imgOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier == "editButton"
        {
            editViewController.textWayValue = "segue : use Button"
        }
        else if segue.identifier == "editBarButton"
        {
            editViewController.textWayValue = "segue : use Bar Button"
        }
        
        editViewController.textMessage = txMessage.text!
        editViewController.isOn = isOn
        editViewController.delegate = self
        
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
    {
        if isOn == true
        {
            imgView.image = imgOn
            self.isOn = true
        }
        else
        {
            imgView.image = imgOff
            self.isOn = false
        }
    }
}


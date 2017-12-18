//
//  ViewController.swift
//  TapTouch
//
//  Created by 정은아 on 2017. 12. 18..
//  Copyright © 2017년 정은아. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtMessage: UILabel!
    @IBOutlet weak var txtTapsLevel: UILabel!
    @IBOutlet weak var txtTouchsLavel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Begin"
        txtTapsLevel.text = String(touch.tapCount)
        txtTouchsLavel.text = String(touches.count)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Moved"
        txtTapsLevel.text = String(touch.tapCount)
        txtTouchsLavel.text = String(touches.count)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Ended"
        txtTapsLevel.text = String(touch.tapCount)
        txtTouchsLavel.text = String(touches.count)
    }
}


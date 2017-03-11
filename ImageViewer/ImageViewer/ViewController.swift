//
//  ViewController.swift
//  ImageViewer
//
//  Created by 정은아 on 2017. 3. 11..
//  Copyright © 2017년 정은아. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    var imageName = ["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg"]
    var MAX_IMAGE_COUNT = 5
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImageView.image = UIImage(named: imageName[currentIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prevButtonAction(_ sender: UIButton) {
        currentIndex -= 1
        if(currentIndex < 0)
        {
            currentIndex = MAX_IMAGE_COUNT
            currentIndex -= 1
        }
        
        ImageView.image = UIImage(named: imageName[currentIndex])
    }

    @IBAction func nextButtonAction(_ sender: UIButton) {
        currentIndex += 1
        if(currentIndex > MAX_IMAGE_COUNT - 1)
        {
            currentIndex = 0
        }
        
        ImageView.image = UIImage(named: imageName[currentIndex])
    }

}


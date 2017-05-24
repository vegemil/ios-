//
//  ViewController.swift
//  PageControl
//
//  Created by 정은아 on 2017. 5. 24..
//  Copyright © 2017년 정은아. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    var images = ["images-1.jpeg", "images-2.jpeg", "images-3.jpeg", "images-4.jpeg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pageChanged(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }

}


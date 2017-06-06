//
//  ViewController.swift
//  DatePicker
//
//  Created by 정은아 on 2017. 3. 11..
//  Copyright © 2017년 정은아. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblSelectTime: UILabel!

    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        alarmTime = formatter.string(from: datePickerView.date)
        lblSelectTime.text = "선택 시간 : " + alarmTime;
    }

    func updateTime(){
        //lblCurrentTime.text = String(count)
        count += 1
        
        let date = NSDate()
        let formatter  = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        let currentTime = formatter.string(from: date as Date)
        lblCurrentTime.text = "현재시간 : " + currentTime
        
        
        if(alarmTime == currentTime)
        {
            view.backgroundColor = UIColor.red;
            count = 0;
        }
        
        if(count >= 60)
        {
            view.backgroundColor = UIColor.white;
        }
    }
}


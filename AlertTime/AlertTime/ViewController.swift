//
//  ViewController.swift
//  AlertTime
//
//  Created by 정은아 on 01/05/2017.
//  Copyright © 2017 정은아. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var selectTimeLable: UILabel!
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var selectTime = ""
    var count = 0
    var isVisible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DatePickerChange(_ sender: UIDatePicker)
    {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        selectTime = formatter.string(from: datePickerView.date)
        selectTimeLable.text = "선택시간: " + selectTime
    }

    func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        let currentTime = formatter.string(from: date as Date)

        currentTimeLabel.text = "현재시간: " + currentTime
        
        if(count > 60)
        {
            count = 0
            isVisible = true
        }
        
        if(currentTime == selectTime)
        {
            if isVisible
            {
                let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: UIAlertControllerStyle.alert)
            
                let alarmAction = UIAlertAction(title: "네, 알겠습니다", style: UIAlertActionStyle.default, handler: {
                ACTION in self.isVisible = false
                })
            
                alarmAlert.addAction(alarmAction)
            
                present(alarmAlert, animated: true, completion: nil)
            }
 
        }
    }
}


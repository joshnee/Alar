//
//  ViewController.swift
//  Alarm
//
//  Created by Francine Kades on 10/20/18.
//  Copyright © 2018 Josh Kades. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer?
   
    
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBOutlet weak var timeTable: UITextField!
    //: timeTable is the variable. itd bee   blah blah = timeTable.text

    
  @objc func whateverNumber() {
    
    Int(timeLeft.text!) -= 1
    
    }
    

func timerStart() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: timeLeft, selector: #selector(whateverNumber), userInfo: nil, repeats: true)

    }
    
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()

    timeLeft.text = ""


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()



    }

    
    @IBAction func startButton(_ sender: Any) {

        if let intChecker = Int(timeTable.text!) {
            
            timeLeft.text = timeTable.text
            
            timerStart()
            
            
            
        } else {
            
            timeLeft.text = nil
            
        }
        
        
        timer?.invalidate()
        
    }
    
    
    func toStop() {
        if timeLeft.text == "0" {
            timer?.invalidate()
        } else {
        
Int(timeLeft.text!) -= 1
        
        }
   
    
    }
    
    
    


}

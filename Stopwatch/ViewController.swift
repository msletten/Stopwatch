//
//  ViewController.swift
//  Stopwatch
//
//  Created by Mat Sletten on 9/30/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    @IBOutlet weak var timeLabel: UILabel!
    var timerCount = 0
    
    @IBAction func playButton(sender: AnyObject)
    {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject)
    {
        timer.invalidate()
    }
                            
    @IBAction func cancelButton(sender: AnyObject)
    {
        timer.invalidate()
        timerCount = 0
        timeLabel.text="0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func result()
    {
        timerCount++
        timeLabel.text = String(timerCount)
        //println("anything else")
        //var timerCount = timer
        //timerLabel.text = timerCount
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


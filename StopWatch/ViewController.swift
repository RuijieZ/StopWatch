//
//  ViewController.swift
//  StopWatch
//
//  Created by Ruijie Zhang on 2015-07-09.
//  Copyright (c) 2015 Ruijie Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var time: UILabel!
    
    var count = 0
    var timer = NSTimer()
    var startCalled = false
    
    func update()
    {
        count++
        time.text = "\(count)"
    }
    
    @IBAction func Pause(sender: AnyObject)
    {
        timer.invalidate()
        startCalled = false
    }
    
    @IBAction func Stop(sender: AnyObject)
    {
        timer.invalidate()
        count = 0
        time.text = "0"
        startCalled = false
    }
    
    @IBAction func Start(sender: AnyObject)
    {
        if (!startCalled)
        {
           timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
           startCalled = true
        }
        else
        {
            return
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft":  5, "Medium": 7*60, "Hard": 12*60]
    
    var totalTime = 0
    var secondsPassed = 0
    
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
    
        timer.invalidate()
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLbl.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    
    }
    
    @objc func updateTimer() {
        if secondsPassed <= totalTime {
            
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            
            secondsPassed += 1
            
            progressBar.progress = Float(percentageProgress)
            
        } else {
            
            titleLbl.text = "Done"
            timer.invalidate()
        }
    }
}

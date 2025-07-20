//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timerProgress: UIProgressView!
    
    var eggTimes = [
        "Soft": 1,
        "Medium": 2,
        "Hard": 3
    ]
    
    var timer = Timer()
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func loveCalculator() {
            let loveScore = Int.random(in: 0...100)
//            if loveScore > 80 {
//                print("You love each other like Kanye loves Kanye")
//            } else if loveScore > 40 {
//                print("You go together like Coke and Mentos")
//            } else {
//                print("You will be forever alone")
//            }
            switch loveScore {
            case 81...: print("You love each other like Kanye loves Kanye")
            case 41..<81: print("You go together like Coke and Mentos")
            default: print("You will be forever alone")
            }
        }
        loveCalculator()
        
        for (key, value) in eggTimes {
            eggTimes.updateValue(value * 60, forKey: key)
        }
        
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        self.titleLabel.text = "How do you like your eggs?"
        self.timerProgress.progress = 0.0
        let hardness = sender.currentTitle ?? "Error"
        var counter = eggTimes[hardness] ?? 0
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
            if counter == 0 {
                self.titleLabel.text = "Done"
                self.playSound("alarm_sound")
                timer.invalidate()
            }
            print("\(counter) seconds.")
            self.timerProgress.progress = 1.0 - Float(counter) / Float(self.eggTimes[hardness]!)
            counter -= 1
            
        })
    }
    func playSound(_ name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

//
//  ViewController.swift
//  audioPlayer
//
//  Created by Chia-Yuan Chang on 2018/5/7.
//  Copyright © 2018年 Chia-Yuan Chang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    @IBAction func replay(_ sender: Any) {
        player.currentTime = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            let audioPath = Bundle.main.path(forResource: "song" , ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            //Error
        }
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


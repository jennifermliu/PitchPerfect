//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Jennifer Liu on 6/23/17.
//  Copyright © 2017 Jennifer Liu. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {


    @IBOutlet weak var SlowButton: UIButton!
    @IBOutlet weak var FastButton: UIButton!
    @IBOutlet weak var HighPitchButton: UIButton!
    @IBOutlet weak var LowPitchButton: UIButton!
    @IBOutlet weak var EchoButton: UIButton!
    @IBOutlet weak var ReverbButton: UIButton!
    @IBOutlet weak var StopButton: UIButton!
    
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int
    {
        case Slow = 0, Fast, HighPitch, LowPitch, Echo, Reverb
    }
    
    
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        print("Stop Audio Button Pressed")
        stopAudio()
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play Sound Button Pressed")
        switch(ButtonType(rawValue: sender.tag)!) {
        case .Slow:
            playSound(rate: 0.5)
        case .Fast:
            playSound(rate: 1.5)
        case .HighPitch:
            playSound(pitch: 1000)
        case .LowPitch:
            playSound(pitch: -1000)
        case .Echo:
            playSound(echo: true)
        case .Reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }

 

}

//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Jennifer Liu on 6/21/17.
//  Copyright © 2017 Jennifer Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    
    @IBOutlet weak var recordButton: UIButton!
    
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled=false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        recordingLabel.text="Recording in Progress"
        stopRecordingButton.isEnabled=true
        recordButton.isEnabled=false
    }

    @IBAction func stopRecording(_ sender: UIButton) {
        recordButton.isEnabled=true
        stopRecordingButton.isEnabled=false
        recordingLabel.text="Tap to Record"
    }
    
    
}


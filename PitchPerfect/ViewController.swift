//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Renan Baialuna on 11/12/20.
//  Copyright © 2020 Renan Baialuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
        stopRecordButton.isEnabled = false
    }

    @IBAction func recordAudio(_ sender: AnyObject) {
        recordingLabel.text = "recording in progress"
        recordButton.isEnabled = false
        stopRecordButton.isEnabled = true
    }
    @IBAction func stopRecording(_ sender: Any) {
         recordingLabel.text = "tap to record"
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
    }
}


//
//  ViewController.swift
//  ReaderApp
//
//  Created by SABYASACHI POLLEY on 07/10/20.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    let speechSynthesizer = AVSpeechSynthesizer()
    
    @IBOutlet var txtStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtStory.text = Story.shared.story
    }
    
    @IBAction func speak(sender: AnyObject) {
        let speechUtterance = AVSpeechUtterance(string: Story.shared.story)
        speechUtterance.rate = 0.35
        speechUtterance.pitchMultiplier = 1
        speechUtterance.volume = 1
        speechSynthesizer.speak(speechUtterance)
    }

}


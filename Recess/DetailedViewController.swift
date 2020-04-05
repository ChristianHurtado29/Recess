//
//  DetailedViewController.swift
//  Recess
//
//  Created by Christian Hurtado on 4/5/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit
import AVFoundation

class DetailedViewController: UIViewController {
    
    var meditation: Meditation?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptiveView: UITextView!

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

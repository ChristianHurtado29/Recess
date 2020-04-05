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
        view.backgroundColor = .systemBlue
        imageView.image = UIImage(named: meditation?.author ?? "person.fill")
        imageView.layer.cornerRadius = 80
        descriptiveView.text = meditation?.description
        descriptiveView.layer.cornerRadius = 30
        playSound(file: "\(meditation!.title)", ext: "mp3")
        
    }
    
    func playSound(file:String, ext:String) -> Void {
        do{
            let sound = Bundle.main.path(forResource: meditation?.title, ofType: "mp3")
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            fatalError("Meditation didn't start")
        }
    }

}

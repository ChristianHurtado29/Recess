//
//  MeditationCell.swift
//  Recess
//
//  Created by Christian Hurtado on 4/5/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit

class MeditationCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    func configureCell (for meditation: Meditation){
        titleLabel.text = "\(meditation.title) (\(meditation.duration))"
        authorLabel.text = "By: \(meditation.author)"
    }
    
    
    
}

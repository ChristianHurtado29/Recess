//
//  Meditations.swift
//  Recess
//
//  Created by Christian Hurtado on 4/5/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import Foundation

struct Meditation{
    let title: String
    let author: String
    let duration: String
    let description: String

static let allMeditations: [Meditation] = [
    Meditation(title: "Ryan Part1",
               author: "Ryan Dooley",
               duration: "5:02",
               description: "Ryan tests the calming effects of meditations"),
    Meditation(title: "Victor Part1",
               author: "Victor Goode",
               duration: "9:46",
               description: "test")
    ]
}

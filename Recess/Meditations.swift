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
    let duration: Double
    let description: String

static let allMeditations: [Meditation] = [
    Meditation(title: "Ryan pt.1",
               author: "Ryan Dooley",
               duration: 4.57,
               description: "Ryan tests the calming effects of meditations"),
    Meditation(title: "",
               author: "",
               duration: 5.03,
               description: "")
    ]
}

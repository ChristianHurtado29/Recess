//
//  ViewController.swift
//  Recess
//
//  Created by Christian Hurtado on 4/5/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit
import AVFoundation

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var meditations = [Meditation](){
        didSet{
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        loadData()
    }

    
    
    
    func loadData(){
        meditations = Meditation.allMeditations
    }

}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meditations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "meditationCell", for: indexPath) as? MeditationCell else {
            fatalError("could not downcast to MeditationCell")
        }
        let selMeditation = meditations[indexPath.row]
        cell.configureCell(for: selMeditation)
        return cell
    }
    
    
}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}



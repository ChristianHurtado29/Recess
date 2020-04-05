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
        loadData()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailedViewController = segue.destination as? DetailedViewController,
            let indexPath = tableView.indexPathForSelectedRow else{
                fatalError("missed cell!")
        }
        let meditation = meditations[indexPath.row]
        detailedViewController.meditation = meditation
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MeditationCell", for: indexPath) as? MeditationCell else {
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



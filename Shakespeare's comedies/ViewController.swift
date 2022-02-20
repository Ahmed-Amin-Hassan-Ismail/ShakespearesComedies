//
//  ViewController.swift
//  Shakespeare's comedies
//
//  Created by Ahmed Amin on 18/02/2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var playData = PlayData()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Shakespear's Comidies"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
}

//MARK: - Table View
extension ViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playData.allWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // configure cell...
        let word = playData.allWords[indexPath.row]
        cell.textLabel?.text = word
        cell.detailTextLabel?.text = "\(playData.wordCounts[word]!)"
        
        return cell
    }
    
}


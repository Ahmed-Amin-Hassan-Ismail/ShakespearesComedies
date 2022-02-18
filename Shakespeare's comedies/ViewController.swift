//
//  ViewController.swift
//  Shakespeare's comedies
//
//  Created by Ahmed Amin on 18/02/2022.
//

import UIKit

class ViewController: UITableViewController {

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
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // configure cell...
        cell.textLabel?.text = String(indexPath.row)
        cell.detailTextLabel?.text = String(indexPath.section)
        
        return cell
    }
    
}


//
//  FilmLocationTableViewController.swift
//  FamilyHouse
//
//  Created by Ariela Cohen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewController: UITableViewController {

    var filmLocations: [FilmLocation] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allLocations()
        tableView.reloadData()

        
    }
    
    func allLocations () {
        let loaction1 = FilmLocation(name: "Brooklyn", address: "1121", tvSeries: .fullHouse)
        let loaction2 = FilmLocation(name: "Queens", address: "1224", tvSeries: .familyMatters)
        let location3 = FilmLocation(name: "Long Island City", address: "127412", tvSeries: .familyMatters)
        
        filmLocations.append(loaction1)
        filmLocations.append(loaction2)
        filmLocations.append(location3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmLocations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! FilmLocationTableViewCell
        
        cell.filmLocation = filmLocations[indexPath.row]
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCollectionSegue" {
            let dest = segue.destination as! CharacterCollectionViewController
            let indexPathRow = self.tableView.indexPathForSelectedRow?.row
            
            if let row = indexPathRow {
                dest.filmLocation = filmLocations[row]
            }
            
        }
    }
}

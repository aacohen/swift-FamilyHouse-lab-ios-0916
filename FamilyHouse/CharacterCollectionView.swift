//
//  CharacterCollectionView.swift
//  FamilyHouse
//
//  Created by Ariela Cohen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class CharacterCollectionViewController: UICollectionViewController {
    
    var characters: [Character] = []
    var filmLocation: FilmLocation!
    
    var selectedCharactersArray: [Character] = []
    
    @IBAction func doneButtonClicked(_ sender: AnyObject) {
        checkIfPersonCanGoToLocation()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCharacters()
    }
    
    func checkIfPersonCanGoToLocation () {
        var statement = "Hey, you're all allowed on set!"
        
        for char in selectedCharactersArray {
            if !char.canReportToSet(on: self.filmLocation) {
                statement = "HEY! You're NOT allowed on set!"
                break
            }
        }
        print (statement)
        
    }
    
    
    func createCharacters () {
        
        let location1 = FilmLocation(name: "Brooklyn", address: "1121", tvSeries: .fullHouse)
        //let loaction2 = FilmLocation(name: "Queens", address: "1224", tvSeries: .familyMatters)
        let location3 = FilmLocation(name: "Long Island City", address: "127412", tvSeries: .familyMatters)
        
        
        let michelle = Character(name: "Michelle", realLifeName: "Olsen Twins", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "michelle"))
        let steve = Character(name: "Steve", realLifeName: "Jaleel White", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "steve"))
        let carl = Character(name: "Carl", realLifeName: "xxx", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "carl"))
        let danny = Character(name: "Danny", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "danny"))
        let eddie = Character(name: "Eddie", realLifeName: "xxx", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "eddie"))
        let jesse = Character(name: "Jesse", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location3, image: #imageLiteral(resourceName: "jesse"))
        let joey = Character(name: "Joey", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "joey"))
        let kimmy = Character(name: "Gibbler", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "kimmy"))
        let laura = Character(name: "Laura", realLifeName: "xxx", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "laura"))
        let rebecca = Character(name: "Rebecca", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "rebecca"))
        let stephanie = Character(name: "Stephanie", realLifeName: "xxx", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "stephanie"))
        let waldo = Character(name: "Waldo", realLifeName: "xxx", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "Waldo"))
        
        characters.append(michelle)
        characters.append(steve)
        characters.append(carl)
        characters.append(danny)
        characters.append(eddie)
        characters.append(jesse)
        characters.append(joey)
        characters.append(kimmy)
        characters.append(laura)
        characters.append(rebecca)
        characters.append(stephanie)
        characters.append(waldo)
        
        
        
    
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! CharacterCollectionViewCell
        
        cell.character = characters[indexPath.item]
        
        
        
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CharacterCollectionViewCell
        
        cell.characterNameLabel.backgroundColor = UIColor.black
        cell.characterNameLabel.textColor = UIColor.yellow

        selectedCharactersArray.append(characters[indexPath.item])
        
    }
    
}

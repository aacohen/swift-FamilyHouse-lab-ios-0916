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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func createCharacters () {
        
        let location1 = FilmLocation(name: "Brooklyn", address: "1121", tvSeries: .fullHouse)
        //let loaction2 = FilmLocation(name: "Queens", address: "1224", tvSeries: .familyMatters)
        let location3 = FilmLocation(name: "Long Island City", address: "127412", tvSeries: .familyMatters)
        
        
        let char1 = Character(name: "Michelle", realLifeName: "Olsen Twins", tvSeries: .fullHouse, currentLocation: location1, image: #imageLiteral(resourceName: "michelle"))
        let char2 = Character(name: "Steve", realLifeName: "Jaleel White", tvSeries: .familyMatters, currentLocation: location3, image: #imageLiteral(resourceName: "steve"))
        
        characters.append(char1)
        characters.append(char2)
        
    }
    
    
    
}

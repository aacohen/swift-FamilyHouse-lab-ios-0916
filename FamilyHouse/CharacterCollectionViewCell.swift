//
//  CharacterCollectionViewCell.swift
//  FamilyHouse
//
//  Created by Ariela Cohen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImageLabel: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    var character: Character! {
        didSet {
            characterImageLabel.image = self.character.image
            characterNameLabel.text = self.character.name
        }
    }
}

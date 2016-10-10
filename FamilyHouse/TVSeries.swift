//
//  TVSeries.swift
//  FamilyHouse
//
//  Created by Ariela Cohen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum TVSeries {
    case familyMatters
    case fullHouse
    
    var description: String {
        switch self {
        case .familyMatters:
            return "Family Matters"
        case .fullHouse:
            return "Full House"
        }
    
    
    }
}

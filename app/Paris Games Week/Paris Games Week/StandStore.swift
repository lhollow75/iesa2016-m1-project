//
//  StandStore.swift
//  MyMovies
//
//  Created by Mastere 1 IT on 21/06/2016.
//  Copyright © 2016 lhollow. All rights reserved.
//

import Foundation

class StandStore {
    var stands: [Stand] = []
    
    init() {
        

        let stand1 = Stand()
        stand1.name = "Playstation"
        stand1.place = "1D032"
        stand1.description = "Stand playstation avec Uncharted."
        stands.append(stand1)
        
        let stand2 = Stand()
        stand2.name = "Xbox One"
        stand2.place = "1E010"
        stand2.description = "stand Xbox One avec gears of War"
        stands.append(stand2)
    }
}

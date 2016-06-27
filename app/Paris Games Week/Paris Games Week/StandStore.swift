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
        

        let stand1 = Stand(name: "Playstation", place: "1D032", infos: "Stand playstation avec Uncharted.")
        stands.append(stand1)
        
        let stand2 = Stand(name: "Xbox One", place: "1E010", infos: "Stand Xbox One avec gears of War.")
        stands.append(stand2)
        
        //A Commenter durant le test !
       /* let defaults = NSUserDefaults.standardUserDefaults()
        
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("myList") as? NSData {
            let _mySavedList = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! [Stand]
                stands = _mySavedList
        }*/
    }
}

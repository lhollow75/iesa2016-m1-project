//
//  Stand.swift
//  MyMovies
//
//  Created by Mastere 1 IT on 21/06/2016.
//  Copyright © 2016 lhollow. All rights reserved.
//

// Class de données

import Foundation

class Stand : NSObject {
    var name: String = ""
    var place: String = ""
    var infos: String = ""
    var attente: String
    
    init(name: String, place: String, infos: String, attente: String) {
        self.name = name
        self.place = place
        self.infos = infos
        self.attente = attente
    }
    
    init(coder decoder: NSCoder) {
        self.name = decoder.decodeObjectForKey("name") as! String
        self.place = decoder.decodeObjectForKey("place") as! String
        self.infos = decoder.decodeObjectForKey("infos") as! String
        self.attente = decoder.decodeObjectForKey("attente") as! String
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.name, forKey: "name")
        coder.encodeObject(self.place, forKey: "place")
        coder.encodeObject(self.infos, forKey: "infos")
        coder.encodeObject(self.attente, forKey: "attente")
    }
}



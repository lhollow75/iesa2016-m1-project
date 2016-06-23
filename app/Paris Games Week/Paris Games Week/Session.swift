//
//  Session.swift
//  Paris Games Week
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import Foundation

class Session : NSObject {
    var name: String = ""
    var place: String = ""
    var infos: String = ""
    var horaires: String = ""
    
    init(name: String, place: String, infos: String, horaires: String) {
        self.name = name
        self.place = place
        self.infos = infos
        self.horaires = horaires
    }
    
    init(coder decoder: NSCoder) {
        self.name = decoder.decodeObjectForKey("name") as! String
        self.place = decoder.decodeObjectForKey("place") as! String
        self.infos = decoder.decodeObjectForKey("infos") as! String
        self.horaires = decoder.decodeObjectForKey("horaires") as! String
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.name, forKey: "name")
        coder.encodeObject(self.place, forKey: "place")
        coder.encodeObject(self.infos, forKey: "infos")
        coder.encodeObject(self.horaires, forKey: "horaires")
    }
}
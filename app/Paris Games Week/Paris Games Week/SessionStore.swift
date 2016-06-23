//
//  SessionStore.swift
//  Paris Games Week
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import Foundation

class SessionStore {
    var session: [Session] = []
    
    init() {
        
        
        let session1 = Session(name: "Playstation", place: "amphi 1", infos: "M. MICHEL vient nous parler de la nouvelle Playstation", horaires: "12h-13h")
        session.append(session1)
        
        let session2 = Session(name: "L'univers Nintendo", place: "amphi 2", infos: "A l'aube d'une ère nouvelle, Nintendo sort une console pleine de surprise", horaires: "13h-14h")
        session.append(session2)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("myListSession") as? NSData {
            let _mySavedListSession = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! [Session]
            print(_mySavedListSession)
            session = _mySavedListSession
        }
    }
}

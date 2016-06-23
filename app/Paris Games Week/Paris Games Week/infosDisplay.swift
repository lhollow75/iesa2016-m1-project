//
//  menu.swift
//  Paris Games Week
//
//  Created by Julien Sallei on 23/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import Foundation


class InfosDisplay {
    var infos : [Info] = []
    
    init() {
        
        let info1 = Info()
        info1.horaires = ""
        info1.adresses = ""
        info1.numeros = ""
        info1.mails = ""
        info1.acces = ""
        info1.tarifs = ""
        infos.append(info1)
    }
}
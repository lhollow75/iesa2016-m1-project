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
        info1.title = "Infos Pratiques"
        info1.horaires = "De 8h30 à 18h30."
        info1.adresses = "PARIS EXPO/PORTE DE VERSAILLES, Pavillon 1, 2.2 et 3"
        info1.acces = "Métro : Station Pôrte de Versailles, ligne 12 - Balard, ligne 8 \nTramway : Ligne 2 et 3 - Porte de Versailles \nAutobus : Ligne 39 et 80 - Porte de Versailles \nParking : R"
        info1.tarifs = "Plein Tarif : 19€ \nTarif réduit : 13€ \nSamedi tarif unique : 19€"
        infos.append(info1)
    }
}
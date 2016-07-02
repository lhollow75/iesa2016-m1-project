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
        

        let stand1 = Stand(name: "Activision", place: "1D032", infos: "Basé à Santa Monica en Californie, Activision Publishing, Inc. est l’un des premiers développeurs et éditeurs mondiaux de produits interactifs et de loisirs. Activision est présent dans de nombreux pays à travers le monde. Pour toutes informations complémentaires sur la société et ses produits, vous pouvez consulter son site Internet : www.activision.com. Découvrez ci-dessous les titres qui seront présents lors de la PGW 2015.", attente: String(arc4random_uniform(90) + 1))
        stands.append(stand1)
        
        let stand2 = Stand(name: "Nintendo", place: "1E010", infos: "Pionnier mondial en matière de création de divertissements interactifs, Nintendo Co., Ltd., basé à Kyoto, au Japon, produit et commercialise des consoles, des accessoires et des logiciels pour ses consoles de salon Wii U™ et Wii™, ses consoles portables Nintendo 3DS™ et Nintendo 2DS™, et ses consoles portables de la gamme Nintendo DS™.", attente: String(arc4random_uniform(90) + 1))
        stands.append(stand2)
 
        
        let stand3 = Stand(name: "Ubisoft", place: "M1354", infos: "Ubisoft figure parmi les leaders mondiaux de la création, édition et distribution de jeux vidéo et de services interactifs. Le groupe possède un riche portefeuille de marques de renommée internationale telles que Assassin’s Creed, Just Dance, Rayman, Far Cry, Watch Dogs ou encore la série de jeux vidéo Tom Clancy.", attente: String(arc4random_uniform(90) + 1))
        stands.append(stand3)
        
        //A Commenter durant le test !
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("myList") as? NSData {
            let _mySavedList = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! [Stand]
                stands = _mySavedList
        }
    }
}

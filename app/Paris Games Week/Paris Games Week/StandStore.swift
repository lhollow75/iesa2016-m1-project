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
        stand1.title = "Harry Potter à l'école des sorciers"
        stand1.author = "J.K. Rowling"
        stand1.description = "Après la mort tragique de Lily et James Potter, Harry est recueilli par sa tante Pétunia, (la sœur de Lily) et son oncle Vernon à l'âge d'un an. Ces derniers, animés depuis toujours d'une haine féroce envers les parents du garçon qu'ils qualifient de gens « bizarres », voire de « monstres », traitent froidement leur neveu et demeurent indifférents aux humiliations que leur fils Dudley lui fait subir. Harry ignore tout de l'histoire de ses parents, si ce n'est qu'ils ont été tués dans un accident de voiture"
        stands.append(stand1)
        
        let stand2 = Stand()
        stand2.title = "L'écume des jours"
        stand2.author = "Boris Vian"
        stand2.description = "Un jour, Chick fait la connaissance d'une fille, Alise, une parente de Nicolas. Colin, jaloux, désire lui aussi connaître une fille, et tombe amoureux de Chloé lors d'une fête pour l'anniversaire du chien Roger. Il se marie avec elle et donne le quart de sa fortune à Chick pour épouser Alise. Chloé tombe malade : un nénuphar pousse dans son poumon droit. C'est le début des problèmes d'argent pour Colin qui, après avoir investi une forte somme dans son mariage et dans une voiture de luxe, doit, pour la guérir, lui acheter des fleurs en grande quantité et l’envoyer à la montagne. Chloé, contrainte à ne boire que deux cuillères d'eau par jour souffre beaucoup. Quand elle revient de la montagne, le nénuphar n’est plus là, mais elle ne peut utiliser maintenant qu'un seul poumon. Colin doit chercher un travail pour acheter des fleurs, quand Chloé tombe de nouveau malade, de l’autre poumon. Leur maison rapetisse progressivement et devient chaque jour plus triste et obscure, malgré les efforts de leur petite souris grise à moustaches noires pour nettoyer les carreaux et laisser passer les rayons de soleil."
        stands.append(stand2)
    }
}

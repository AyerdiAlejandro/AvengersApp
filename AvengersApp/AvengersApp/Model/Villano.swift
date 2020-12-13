//
//  Villano.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 10/12/20.
//

import Foundation

class Villano: Character {
    var nivelDeMaldad: Int? = nil
    
    init(image: String, name: String, description: String, maldad: Int) {
        super.init(image:image,name:name,description:description)

        self.nivelDeMaldad = maldad
    }
}

//
//  File.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 10/12/20.
//

import Foundation

class Superheroe: Character {
    var nivelDeBondad: Int? = nil
    
    init(image: String, name: String, description: String, bondad: Int) {
        super.init(image:image,name:name,description:description)
        self.nivelDeBondad = bondad
    }
    
}

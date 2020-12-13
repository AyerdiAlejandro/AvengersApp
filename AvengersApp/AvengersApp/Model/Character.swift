//
//  Character.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 10/12/20.
//

import Foundation


class Character {
    
    var image: String? = nil
    var name: String = ""
    var description: String = ""
    

    init(image: String, name: String, description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
}

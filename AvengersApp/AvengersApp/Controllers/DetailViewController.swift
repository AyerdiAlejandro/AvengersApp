//
//  DetailViewController.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 12/12/20.
//

import UIKit


class DetailViewController: UIViewController{
    
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characeterNameLabel: UILabel!
    @IBOutlet weak var characterPuntuacionLabel: UILabel!
    @IBOutlet weak var characterDescriptionTextView: UITextView!
    
    
    var character: Character? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = character?.name
        characterImageView.image = UIImage(named: character?.image ?? "")
        
        characeterNameLabel.text = character?.name
        
        if character is Superheroe{
            let sh = character as? Superheroe
            if let bondad = sh?.nivelDeBondad {
                characterPuntuacionLabel.text = "Bondad: \(bondad)"

            }
            
        } else {
            let vl = character as? Villano
            if let maldad = vl?.nivelDeMaldad {
                characterPuntuacionLabel.text = "Maldad \(maldad)"

            }

        }
        
        characterDescriptionTextView.text = character?.description
            
    }
    
}

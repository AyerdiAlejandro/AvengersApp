//
//  CharacterCellView.swift
//  AvengersApp
//
//  Created by Alejandro Marcelo Ayerdi on 12/12/20.
//

import UIKit

class CharacterCellView: UITableViewCell {
    @IBOutlet var characterImage: UIImageView?
    @IBOutlet var name: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        characterImage?.image = nil
        name?.text = nil
    }
    
    
    func configureView(character: Character) {
        
        characterImage?.image = UIImage(named: character.image ?? "")
        
        name?.text = character.name
        
        
    }
    
    
}

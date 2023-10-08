//
//  PokemonTableViewCell.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    static let identifier = "PokemonTableViewCell"
    
    @IBOutlet weak var cellLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with pokemon: PokemonResponseModel) {
        self.cellLabel.text = pokemon.name
    }
}

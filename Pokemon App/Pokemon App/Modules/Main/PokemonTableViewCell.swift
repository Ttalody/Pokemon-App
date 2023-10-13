//
//  PokemonTableViewCell.swift
//  Pokemon App
//
//  Created by Артур on 14.10.23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    
    static let identifier = "PokemonTableViewCell"

    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.backgroundColor = .green
    }

    func configure(with pokemon: PokemonPreviewModel) {
        cellLabel?.text = pokemon.name
//        self.backgroundColor = .blue
        if let pokemonName = pokemon.name {
            print(pokemonName)
        } else {print("net")}
        
    }
    
}

//
//  PokemonSprite.swift
//  Pokemon App
//
//  Created by Артур on 8.10.23.
//

import Foundation

struct PokemonSprites: Codable {
    let frontDefault: String?
    
    private enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}

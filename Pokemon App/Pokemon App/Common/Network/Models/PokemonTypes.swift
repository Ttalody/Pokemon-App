//
//  PokemonTypes.swift
//  Pokemon App
//
//  Created by Артур on 8.10.23.
//

import Foundation

struct PokemonTypes: Codable {
    let type: PokemonType?
    
    private enum CodingKeys: String, CodingKey {
        case type
    }
}

//
//  PokemonType.swift
//  Pokemon App
//
//  Created by Артур on 8.10.23.
//

import Foundation

struct PokemonType: Codable {
    let name: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
    }
}

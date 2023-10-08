//
//  PokemonResponseModel.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
//

import Foundation

struct PokemonResponseModel: Codable {
    let id: Int
    let name: String
    let sprites: [PokemonSprites]
    let types: [PokemonTypes]
    let height: Int
    let weight: Int
    
}

//
//  PokemonEntity.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
//

import Foundation

struct PokemonModel: Codable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let height: Int
    let weight: Int
}

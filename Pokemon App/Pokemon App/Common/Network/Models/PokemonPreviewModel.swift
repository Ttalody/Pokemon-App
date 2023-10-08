//
//  PokemonPreviewModel.swift
//  Pokemon App
//
//  Created by Артур on 8.10.23.
//

import Foundation

struct PokemonPreviewModel: Codable {
    let name: String?
    let url: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case url
    }
    
    init() {
        self.name = ""
        self.url = ""
    }
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

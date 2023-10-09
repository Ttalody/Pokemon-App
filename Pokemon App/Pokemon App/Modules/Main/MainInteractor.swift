//
//  MainInteractor.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import Foundation
import UIKit

class MainInteractor: MainInteractorProtocol {
    
    weak var presenter: MainPresenterProtocol?
    
    func getPokemonList() {
        NetworkManager.makeRequest { result in
            switch result {
            case .success(let response): print("api request success")
                self.presenter?.responseResult(pokemons: response?.results, error: nil)
            case .failure(let error): self.presenter?.responseResult(pokemons: nil, error: error)
                print("api request failure")
            }
        }
    }
    
}

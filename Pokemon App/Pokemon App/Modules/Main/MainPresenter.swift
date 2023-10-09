//
//  MainPresenter.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import Foundation
import UIKit

class MainPresenter: MainPresenterProtocol {

    weak var view: MainViewProtocol?
    
    var interactor: MainInteractorProtocol?
    
    var router: MainRouterProtocol?
    
    
    func tableCellClicked() {
        print("tableCellClicked")
    }
    
    func requestPokemonList() {
        interactor?.getPokemonList()
        print("presenter.requestPokemonList")
    }
    
    func responseResult(pokemons: [PokemonPreviewModel]?, error: Error?) {
        if let pokemons = pokemons {
            print("response success")
            self.view?.showList(pokemons: pokemons)
        } else if let error = error {
            self.view?.showError(error: error)
            print("response error")
        }
    }
    
    func showDetailViewController() {
        print("show")
    }
}

//
//  MainProtocols.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import Foundation
import UIKit


protocol MainViewProtocol: AnyObject {
    
    var presenter: MainPresenterProtocol? { get set }
    
    var pokemonArray: [PokemonPreviewModel] { get set }
    
    func tableCellClicked()
    
    func showList(pokemons: [PokemonPreviewModel])
    func showError(error: Error)
}

protocol MainInteractorProtocol: AnyObject {
    
    var presenter: MainPresenterProtocol? { get set }
    
    func getPokemonList()
}

protocol MainPresenterProtocol: AnyObject {
    var view: MainViewProtocol? { get set }
    var interactor: MainInteractorProtocol? { get set }
    var router: MainRouterProtocol? { get set }
    
    func requestPokemonList()
    
    func responseResult(pokemons: [PokemonPreviewModel]?, error: Error?)
    
    func showDetailViewController()
}

protocol MainRouterProtocol: AnyObject {
    static func createModule() -> MainViewController
    
    func openDetailViewController(at indexPath: IndexPath)
}

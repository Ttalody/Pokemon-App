//
//  MainPresenter.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import Foundation
import UIKit

class MainPresenter: MainPresenterProtocol {

    var view: MainViewProtocol?
    
    var interactor: MainInteractorProtocol?
    
    var router: MainRouterProtocol?
    
    
    func tableCellClicked() {
        print("tableCellClicked")
    }
    
    func requestPokemonList() {
        print("request")
    }
    
    func showDetailViewController() {
        print("show")
    }
}

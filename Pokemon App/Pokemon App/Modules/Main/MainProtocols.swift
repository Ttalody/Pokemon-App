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
    
    func tableCellClicked()
    
    func showList()
    func showError()
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
    
    func showDetailViewController()
}

protocol MainRouterProtocol: AnyObject {
    var viewController: UIViewController? { get set }
    
    func openDetailViewController(at indexPath: IndexPath)
}

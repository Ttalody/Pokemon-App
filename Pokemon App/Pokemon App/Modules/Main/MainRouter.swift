//
//  MainRouter.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
//

import Foundation
import UIKit

class MainRouter: MainRouterProtocol {
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    weak var viewController: UIViewController?
    
    static func createModule() -> MainViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: MainViewController.identifier) as! MainViewController
        
        let presenter: MainPresenterProtocol = MainPresenter()
        let interactor: MainInteractorProtocol = MainInteractor()
        let router: MainRouterProtocol = MainRouter()
        
        
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
    
    func openDetailViewController(at indexPath: IndexPath) {
        print("openDetailViewController")
    }
}

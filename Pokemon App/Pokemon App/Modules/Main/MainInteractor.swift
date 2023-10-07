//
//  MainInteractor.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import Foundation
import UIKit

class MainInteractor: MainInteractorProtocol {
    
    var presenter: MainPresenterProtocol?
    
    func getPokemonList() {
        print("network request")
    }
    
}

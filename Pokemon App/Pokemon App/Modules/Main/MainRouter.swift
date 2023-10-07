//
//  MainRouter.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
//

import Foundation
import UIKit

class MainRouter: MainRouterProtocol {
    
    weak var viewController: UIViewController?
    
    func openDetailViewController(at indexPath: IndexPath) {
        print("openDetailViewController")
    }
}

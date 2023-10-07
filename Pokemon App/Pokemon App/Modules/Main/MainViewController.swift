//
//  ViewController.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import UIKit

class MainViewController: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenterProtocol?
   
    @IBOutlet weak var pokemonTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
    }

    func showList() {
        print("success")
    }
    
    func showError() {
        print("error")
    }
    
    func tableCellClicked() {
        print("tableCellClicked")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PokemonTableViewCell.identifier) as? PokemonTableViewCell else {return UITableViewCell()}
//        cell.configure(with: )
        return cell
    }
    
    
}

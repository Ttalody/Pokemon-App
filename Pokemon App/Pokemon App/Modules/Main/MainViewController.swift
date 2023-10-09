//
//  ViewController.swift
//  Pokemon App
//
//  Created by Артур on 6.10.23.
//

import UIKit

class MainViewController: UIViewController, MainViewProtocol {
    
    static let identifier = "MainViewController"
    
    var presenter: MainPresenterProtocol?
    
    var pokemonArray = [PokemonPreviewModel]()
    
    private var pokemonTableView: UITableView = {
        var table = UITableView()
        table.register(PokemonTableViewCell.self, forCellReuseIdentifier: PokemonTableViewCell.identifier)
        return table
    }()
   
//    @IBOutlet weak var pokemonTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.requestPokemonList()
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        
        print(pokemonArray.count)
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pokemonTableView.backgroundColor = .magenta
        pokemonTableView.frame = view.bounds
        view.addSubview(pokemonTableView)
    }

    func showList(pokemons: [PokemonPreviewModel]) {
        self.pokemonArray = pokemons
        print("showList")
        print(self.pokemonArray.count)
        DispatchQueue.main.async {
            self.pokemonTableView.reloadData()
            print(self.pokemonArray.count)
            
        }
    }
    
    func showError(error: Error) {
        print(error)
    }
    
    func tableCellClicked() {
        print("tableCellClicked")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(pokemonArray.count)
        return pokemonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PokemonTableViewCell.identifier) as? PokemonTableViewCell else {return UITableViewCell()}
        cell.cellLabel.text = pokemonArray[indexPath.row].name
        return cell
    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        guard let header = view as? UITableViewHeaderFooterView else {return}
//
//        header.textLabel?.font = .systemFont(ofSize: 30, weight: .bold)
//        header.textLabel?.textColor = .white
//        header.textLabel?.frame = CGRect(x: view.bounds.origin.x + 10, y: view.bounds.origin.y, width: 100, height: header.bounds.height)
//        header.textLabel?.text = "Pokemon List"
//    }
}

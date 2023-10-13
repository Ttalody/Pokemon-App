//
//  PokemonTableViewCell.swift
//  Pokemon App
//
//  Created by Артур on 7.10.23.
////
//
//import UIKit
//
//class PokemonTableViewCell: UITableViewCell {
//    
//    static let identifier = "PokemonTableViewCell"
//    
//    var cellLabel: UILabel = {
//        let label = UILabel()
//        label.frame = CGRect(x: 8, y: 8, width: 200, height: 70)
//        label.numberOfLines = 0
//        label.textColor = .label
//        label.font = .systemFont(ofSize: 24, weight: .semibold)
//        return label
//    }()
////    @IBOutlet weak var cellLabel: UILabel!
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        
//        self.backgroundColor = .green
//        
//        cellLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        self.addSubview(cellLabel)
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//    func configure(with pokemon: PokemonPreviewModel) {
//        self.cellLabel.text = pokemon.name
//        
//    }
//}

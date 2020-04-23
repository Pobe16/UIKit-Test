//
//  TableViewCell.swift
//  UIKit Test
//
//  Created by Mikolaj Lukasik on 22/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var fizzBuzzLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(fizzBuzzLabel)
        
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureLabel(){
        fizzBuzzLabel.numberOfLines = 0
        fizzBuzzLabel.adjustsFontSizeToFitWidth = true
        fizzBuzzLabel.textAlignment = .center
        
        fizzBuzzLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fizzBuzzLabel.topAnchor.constraint(equalTo: topAnchor),
            fizzBuzzLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            fizzBuzzLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            fizzBuzzLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
    
    func set(_ cellNumber: Int) {
        var fizzBuzzText = ""
        
        if cellNumber % 3 == 0 {
            fizzBuzzText += "FIZZ"
            if cellNumber % 5 == 00 {
                fizzBuzzText += "BUZZ!"
            }
        } else if cellNumber % 5 == 0 {
            fizzBuzzText += "BUZZ"
        } else {
            fizzBuzzText += "\(cellNumber)"
        }
        
        fizzBuzzLabel.text = fizzBuzzText;
    }
}

//
//  TableViewController.swift
//  UIKit Test
//
//  Created by Mikolaj Lukasik on 22/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FizzBuzz"
        
        configureTableView()
    }
    
    
    func configureTableView() {
        
        view.addSubview(tableView)
        
        setTableViewDelegates()
        
        setTableViewConstraints()
        
        
        tableView.rowHeight = 50
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "FizzBuzzCell")
        
        
    }
    
    
    func setTableViewDelegates() {
        tableView.dataSource    = self
        tableView.delegate      = self
    }
    
    
    func setTableViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    
}

/*
// MARK: - Extensions
 
*/
extension TableViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "FizzBuzzCell", for: indexPath) as! TableViewCell
        let cellNumber = indexPath.row
        
        
        currentCell.set(cellNumber)
        return currentCell
    }

}

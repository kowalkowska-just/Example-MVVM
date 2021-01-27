//
//  ViewController.swift
//  MVVM - Example
//
//  Created by Justyna Kowalkowska on 27/01/2021.
//

import UIKit

class ViewController: UIViewController {

    //  MARK: - Properties
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }

    //MARK: - Helper functions
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, left: view.leftAnchor,
                         bottom: view.bottomAnchor, right: view.rightAnchor,
                         paddingTop: 5, paddingLeft: 5,
                         paddingBottom: 5, paddingRight: 5)
    }
}

//MARK: - Extension UITableViewDataSource and UITableViewDelegate

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Justyna programuje"
        return cell
    }
}


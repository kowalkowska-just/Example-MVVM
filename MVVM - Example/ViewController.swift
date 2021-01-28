//
//  ViewController.swift
//  MVVM - Example
//
//  Created by Justyna Kowalkowska on 27/01/2021.
//

import UIKit

class ViewController: UIViewController {

    //  MARK: - Properties
    
    private var models = [Person]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(PersonFollowingCell.self, forCellReuseIdentifier: PersonFollowingCell.identifier)
        return table
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        setupNavigationBar()
        configureModels()
    }

    //MARK: - Helper functions
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor,
                         bottom: view.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor)
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func configureModels() {
        let names = ["Justyna", "Tomek", "Łukasz", "Marzenka", "Pawełek", "Renata", "Bogdan"]
        
        for name in names {
            models.append(Person(name: name))
        }
    }
}

//MARK: - Extension UITableViewDataSource and UITableViewDelegate

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingCell.identifier, for: indexPath) as? PersonFollowingCell
        else { return UITableViewCell() }
        cell.configure(with: PersonFollowingCellViewModel(with: model))
        cell.delegate = self
        return cell
    }
}

//MARK: - Extension PersonFollowingCellDelegate

extension ViewController: PersonFollowingCellDelegate {
    
    func personFollowingCell(_ cell: PersonFollowingCell, didTapWith viewModel: PersonFollowingCellViewModel) {
    }
}


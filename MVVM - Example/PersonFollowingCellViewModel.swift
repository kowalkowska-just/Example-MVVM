//
//  PersonFollowingCellViewModel.swift
//  MVVM - Example
//
//  Created by Justyna Kowalkowska on 27/01/2021.
//

import UIKit

struct PersonFollowingCellViewModel {
    let name: String
    let username: String
    let currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        name = model.name
        username = model.username
        currentlyFollowing = false
        image = UIImage(systemName: "person")
    }
}

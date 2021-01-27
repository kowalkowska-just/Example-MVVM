//
//  Person.swift
//  MVVM - Example
//
//  Created by Justyna Kowalkowska on 27/01/2021.
//
import Foundation

enum Gender {
    case male
    case female
    case unspecified
}

struct Person {
    let name: String
    let birthdate: Date?
    let middleName: String?
    let address: String?
    let gender: Gender
    
    init(name: String,
         birthdate: Date? = nil,
         middleName: String? = nil,
         address: String? = nil,
         gender: Gender = .unspecified
    ) {
        self.name = name
        self.birthdate = birthdate
        self.middleName = middleName
        self.address = address
        self.gender = gender
    }
}

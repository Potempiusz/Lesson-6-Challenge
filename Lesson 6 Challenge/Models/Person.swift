//
//  Person.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import Foundation

class Person: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
    
}

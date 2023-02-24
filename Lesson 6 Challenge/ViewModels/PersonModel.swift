//
//  PersonModel.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var persons = [Person]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.persons = DataService.getLocalData()
        
    }
}

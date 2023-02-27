//
//  PersonListView.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import SwiftUI

struct PersonListView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
    
        NavigationView {
            
            List(model.persons) { r in
                
                VStack (alignment: .leading) {
                    if model.showName == true
                        {
                        Text("Name: " + r.name)
                    };
                    if model.showCompany == true
                    {
                        Text("Company: " + r.address)
                    };
                    if model.showAddress == true
                    {
                        Text("Address: " + r.company)
                    };
                    if model.showYOE == true
                    {
                        Text("Years of experience: \(r.yearsOfExperience)")
                    };
                }
            }
        }
        .navigationTitle("People")
    }
}


struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
            .environmentObject(PersonModel())
    }
}

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
    
            List(model.persons) { r in
                
                Text(r.name)
                    .foregroundColor(Color.red)
            }
        }
    }


struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
            .environmentObject(PersonModel())
    }
}

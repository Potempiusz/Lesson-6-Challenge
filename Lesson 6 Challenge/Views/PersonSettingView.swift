//
//  PersonSettingView.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import SwiftUI

struct PersonSettingView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Toggle("Show name: ", isOn: $model.showName)
                Toggle("Show company: ", isOn: $model.showCompany)
                Toggle("Show address: ", isOn: $model.showAddress)
                Toggle("Show years of experience: ", isOn: $model.showYOE)
                
            }
            .navigationTitle("Display Preferences")
        }
    }
}

struct PersonSettingView_Previews: PreviewProvider {
    static var previews: some View {
        PersonSettingView()
            .environmentObject(PersonModel())
    }
}

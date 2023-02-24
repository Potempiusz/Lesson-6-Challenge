//
//  ContentView.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import SwiftUI

struct PersonTabView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        
        TabView {
            
            PersonListView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            PersonSettingView()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            PersonTabView()
                .environmentObject(PersonModel())
        }
    }
}

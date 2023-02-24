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
        Text("text")
    }
}

struct PersonSettingView_Previews: PreviewProvider {
    static var previews: some View {
        PersonSettingView()
            .environmentObject(PersonModel())
    }
}

//
//  Lesson_6_ChallengeApp.swift
//  Lesson 6 Challenge
//
//  Created by Mateusz Potępa on 19/02/2023.
//

import SwiftUI

@main
struct Lesson_6_ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            PersonTabView()
                .environmentObject(PersonModel())
        }
    }
}

//
//  FructosUIApp.swift
//  FructosUI
//
//  Created by Abduqodir's MacPro on 2022/04/07.
//

import SwiftUI

@main
struct FructosUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}

//
//  ContentView.swift
//  LeoDoro
//
//  Created by Thomas Vokal on 22.09.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AchievementList()
                .tabItem {
                    Label("Achievements", systemImage: "star")
                }

            
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "info")
                }
                    }
    }
}
    #Preview {
        ContentView()
    }


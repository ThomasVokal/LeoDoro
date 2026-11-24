//
//  AchievementList.swift
//  Leodoro
//
//  Created by Thomas Vokal on 13.10.26.
//

import SwiftUI

struct AchievementList: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack{
                    List(achievements) { achievement in
                        NavigationLink {
                            AchievementDetail(achievement: achievement)
                        } label: {
                            AchievementRow(achievement: achievement,
                                           screenWidth: geometry.size.width)
                        }.listRowBackground(Color.clear)
                         .listRowSeparator(.hidden)
                    }
                }.scrollContentBackground(.hidden)
                    .background(LinearGradient(gradient:
                            .init(colors: [Color(.pomodoroGreen),Color.white]), startPoint: .top, endPoint: .bottom)).edgesIgnoringSafeArea(.all)
            }
        }
    }
}

#Preview {
    AchievementList()
}

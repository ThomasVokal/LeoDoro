//
//  AchievementDetail.swift
//  Leodoro
//
//  Created by Thomas Vokal on 20.10.26.
//

import SwiftUI

struct AchievementDetail: View {
    
    @State var achievement: Achievement
    
    var body: some View {
        ScrollView {
            VStack {
                Image(achievement.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                    .padding(.top, 30)
                
                VStack {
                    Text("Achievement Locked")
                        .foregroundColor(.white)
                        .padding(20)
                }.background(.pomodoroRed)
                    .cornerRadius(20)
                    .padding(20)
                
                VStack(alignment: .leading) {
                    Text(achievement.title)
                        .font(.title)
                    
                    HStack {
                        Text(achievement.description)
                        Spacer()
                    }.font(.subheadline)
                        .foregroundStyle(.secondary)
                    Divider()
                    Text("\(achievement.points) Points")
                }.padding(20)
            }
        }.navigationTitle(achievement.title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AchievementDetail(achievement: achievements[0])
}

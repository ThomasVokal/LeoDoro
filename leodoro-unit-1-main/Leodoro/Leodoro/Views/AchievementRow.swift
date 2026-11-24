//
//  AchievementRow.swift
//  Leodoro
//
//  Created by Thomas Vokal on 13.10.26.
//

import SwiftUI

struct AchievementRow: View {
    let achievement: Achievement
    let screenWidth: CGFloat
    
    var body: some View {
        ZStack{
            HStack{
                Image(achievement.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth / 3)
                Text(achievement.title)
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
            }
        }.frame(width: screenWidth - 50)
            .frame(height: 200)
            .background(Color.white.opacity(0.2).cornerRadius(25)
                .rotation3DEffect(.init(degrees: 20), axis: (x:0, y:-1, z:0))
            .padding(.vertical, 20)
            .padding(.trailing, 25))
            .padding(.horizontal)
    }
}

#Preview {
    AchievementRow(achievement: achievements[0], screenWidth: 400)
}

//
//  Home.swift
//  Leodoro
//
//  Created by Thomas Vokal on 29.09.26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        @State var timerIsShowing: Bool = false
        VStack {
            
            HStack {
                Spacer()
                VStack {
                    Text("20\n Points")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(45)
                        .foregroundColor(.white)
                    
                }.background(.pomodoroRed)
                    .clipShape(Corners(corner:
                            .bottomLeft, size: CGSize(width:
                            50, height: 50)))
            }
            
            Spacer()
            
            VStackLayout(alignment: .leading, spacing: 10) {
                Text("Ready to be productive?")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Complete a Pomodoro Session and collect points.")
            }.padding(20)
            
            Image("Pomodoro")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing, .bottom], 40)
            
            Button("Start Pomodoro Session") {
                timerIsShowing = true
                
            }.font(.largeTitle)
                .foregroundColor(.pomodoroRed)
                .padding(.bottom, 60)
                .sheet(isPresented: $timerIsShowing) {
                    NavigationView {
                        PomodoroView()
                    }
                }
        }.edgesIgnoringSafeArea(.top)
    }
}


#Preview {
    HomeView()
}

//
//  ViewHelper.swift
//  LeoDoro
//
//  Created by Thomas Vokal on 22.09.26.
//

import SwiftUI

struct Corners: Shape {
    
    var corner: UIRectCorner
    var size: CGSize
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner,
                                cornerRadii: size)
        return Path(path.cgPath)
    }
}
    
    struct CardView: View {
        let descpription: String
        let image: String
        let type: CardViewType
        
        var body: some View {
            HStack {
                if type == .imageRight {
                    Text(descpription)
                    .padding(10)
                    .padding(.leading, 10)
                    Spacer()
                    Image(image)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(5)
                }else {
                    Image(image)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(5)
                    Spacer()
                    Text(descpription)
                        .padding(10)
                        .padding(.trailing, 15)
                }
            }.background(.pomodoroGreen.opacity(0.2)).cornerRadius(15)
                .padding(.leading, type == .imageLeft ? 30 : 20)
                .padding(.trailing, type == .imageLeft ? 20 : 30)
                .padding([.top, .bottom], 5)

        }
    }
    
    enum CardViewType{
        case imageLeft
        case imageRight
    }


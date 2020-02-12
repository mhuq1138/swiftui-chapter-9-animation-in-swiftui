
//
//  RunningHareView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct RunningHareView: View {
    @State private var flag = false
    
    var body: some View {
        GeometryReader{ g in
            ZStack(alignment: .topLeading){
                FigureEightShape()
                   .stroke(Color.gray, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .miter, miterLimit: 0, dash: [7, 7], dashPhase: 0))
                   .foregroundColor(.blue)
                   .frame(width: g.size.width, height: 300)
                
                Image(systemName: "hare.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .frame(width: 50, height: 50).offset(x: -25, y: -25)
                    .modifier(FollowEffect(pct: self.flag ? 1: 0, path: FigureEightShape.createPath(in: CGRect(x: 0, y: 0, width: g.size.width, height: 300)), rotate: true))
                .onAppear {
                    withAnimation(Animation.linear(duration: 24.0).repeatForever(autoreverses: false)) {
                        self.flag.toggle()
                    }
                }
            }
        }.padding(20)
         .navigationBarTitle("Hare Running Along Path", displayMode: .automatic)
    }
}

struct RunningHareView_Previews: PreviewProvider {
    static var previews: some View {
        RunningHareView()
    }
}

//
//  ProgressBarUpdater.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ProgressBarUpdater: AnimatableModifier {
    var pct: CGFloat = 0
    
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(LineShape(pct: pct))
            .overlay(LabelView(pct: pct))
    }
    
    struct LineShape: Shape {
        let pct: CGFloat
        
        func path(in rect: CGRect) -> Path {

            var p = Path()
            p.move(to: CGPoint(x: 0, y: 30))
            p.addLine(to: CGPoint(x: rect.size.width*pct , y: 30.0))

            return p.strokedPath(.init(lineWidth: 10, dash: [6, 3], dashPhase: 10))
        }
    }
    
    struct LabelView: View {
        let pct: CGFloat
        
        var body: some View {
            Text("\(Int(pct * 100)) %")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding(.top, 40)
        }
    }
}

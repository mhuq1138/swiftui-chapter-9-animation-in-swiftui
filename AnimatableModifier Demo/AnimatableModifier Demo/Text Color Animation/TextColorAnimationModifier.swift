//
//  TextColorAnimationModifier.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct TextColorAnimationModifier: AnimatableModifier {
    let from: UIColor
    let to: UIColor
    var pct: CGFloat
    let text: Text
        
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
    }

    func body(content: Content) -> some View {
        return text.foregroundColor(colorMixer(c1: from, c2: to, pct: pct))
    }
        
    func colorMixer(c1: UIColor, c2: UIColor, pct: CGFloat) -> Color {
        guard let cc1 = c1.cgColor.components else { return Color(c1) }
        guard let cc2 = c2.cgColor.components else { return Color(c1) }
            
        let r = (cc1[0] + (cc2[0] - cc1[0]) * pct)
        let g = (cc1[1] + (cc2[1] - cc1[1]) * pct)
        let b = (cc1[2] + (cc2[2] - cc1[2]) * pct)

        return Color(red: Double(r), green: Double(g), blue: Double(b))
    }
}


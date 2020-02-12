//
//  ShakingAnimationView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ShakingAnimationView: View {
    @State var taps: Int = 0

    var body: some View {
        VStack(spacing:20) {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 200, height: 100)
                .modifier(ShakeEffect(amplitude: 20.0, shakeCount: 5, animatableData: CGFloat(taps)))
            
            Button("Animate"){
                withAnimation(.default) {
                    self.taps += 1
                }
            }
        }.navigationBarTitle("Shaking View Animation", displayMode: .automatic)
    }
}

struct ShakingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ShakingAnimationView()
    }
}

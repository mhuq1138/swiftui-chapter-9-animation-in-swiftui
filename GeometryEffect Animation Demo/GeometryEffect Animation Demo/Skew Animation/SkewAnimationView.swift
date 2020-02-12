//
//  SkewAnimationView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SkewAnimationView: View {
    @State var cycle: CGFloat = 0.0

    var body: some View {
        VStack(spacing:20) {
            Rectangle()
               .fill(Color.pink)
                .frame(width: 200, height: 100)
                .modifier(SkewEffect(offset: 0.8, cycle: cycle))
               
            Button("Animate"){
                withAnimation(.linear(duration: 2)) {
                    self.cycle += 2.0
                   }
               }
        }.navigationBarTitle("Skew Animation", displayMode: .automatic)
    }
}

struct SkewAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SkewAnimationView()
    }
}

//
//  OscillatingWedge.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct OscillatingWedge: View {
    @State var offset = 0.0
    @State var width = 1.0
    var body: some View {
        VStack{
            MyWedge(angleOffset: offset, wedgeWidth: width)
            .fill(Color.red)
            .frame(width: 350, height: 400)
            
            Button("Animate"){
                withAnimation(.interpolatingSpring(stiffness: 5.0, damping: 0.5)){
                    self.offset = 1.0
                    self.width = 1.5
                }
            }
        }.navigationBarTitle("Oscillating Wedge", displayMode: .automatic)
    }
}

struct OscillatingWedge_Previews: PreviewProvider {
    static var previews: some View {
        OscillatingWedge()
    }
}


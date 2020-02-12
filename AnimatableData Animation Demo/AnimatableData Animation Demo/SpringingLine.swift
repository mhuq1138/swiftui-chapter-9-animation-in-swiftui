//
//  SpringingLine.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SpringingLine: View {
    @State private var width:CGFloat = 30.0
    
    var body: some View {
        GeometryReader{ g in
            VStack{
                MyLine(width: self.width)
                    .stroke(Color.blue, lineWidth: 10)
                    .frame(width: 300, height: 50)
                    .animation(Animation.interpolatingSpring(stiffness: 23, damping: 0.8))
                    .padding(.bottom, 50)
                Button("Tap Me"){
                    self.width = g.size.width/4
                }
            }.navigationBarTitle("Springy Line", displayMode: .automatic)
        }
    }
}

struct SpringingLine_Previews: PreviewProvider {
    static var previews: some View {
        SpringingLine()
    }
}

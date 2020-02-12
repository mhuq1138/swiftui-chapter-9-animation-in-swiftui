//
//  ChainingAnimation.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ChainingAnimation: View {
    @State private var flag = false
    
    var body: some View {
        VStack{
            Image(systemName: "arrow.right.circle")
                .font(.system(size: 50))
                .foregroundColor(.orange)
                .rotationEffect(.degrees(flag ? 90 : 0))
                .animation(.easeIn(duration: 5))
                .scaleEffect(flag ? 2.5 : 1)
                .animation(.linear(duration: 3))
                .padding(30)
            Button("Animate"){
                self.flag.toggle()
            }.padding(20)
        }.navigationBarTitle("Chaining Animation", displayMode: .automatic)
    }
}

struct ChainingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ChainingAnimation()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}

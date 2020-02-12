//
//  ScaleAndMove.swift
//  Explicit Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ScaleAndMove: View {
    @State private var scaleFlag = false
    @State private var moveFlag = false
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.orange)
                .frame(width: 150, height: 100)
                .scaleEffect(scaleFlag ? 1.5:1.0)
                .padding(.bottom, 30)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .offset(moveFlag ? CGSize(width: 150, height: 0):CGSize(width: -150, height: 0))
                .padding(.bottom, 30)
            Button("Animate"){
                withAnimation(Animation.linear(duration: 3)){
                    self.scaleFlag.toggle()
                    self.moveFlag.toggle()
                }
            }
        }.navigationBarTitle("Simple Explicit Animation", displayMode: .inline)
    }
}

struct ScaleAndMove_Previews: PreviewProvider {
    static var previews: some View {
        ScaleAndMove()
           .previewLayout(.fixed(width: 400, height: 350))
    }
}

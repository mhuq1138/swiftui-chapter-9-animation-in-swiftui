//
//  SimpleAnimation.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/7/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SimpleAnimation: View {
    @State private var scale = false
    
    var body: some View {
        VStack{
             Text("SwiftUI")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .scaleEffect(scale ? 1.5:1.0)
                .animation(.default)
                
            Button("Animate"){
                self.scale.toggle()
            }.padding(50)
            
        }.navigationBarTitle("Simple Implicit Animation", displayMode: .automatic)
    }
}

struct SimpleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAnimation()
    }
}

//
//  TextColorAnimationView.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct TextColorAnimationView: View {
    @State private var flag = false
    
    var body: some View {
        VStack(spacing: 20){
            Text("")
                .modifier(TextColorAnimationModifier(from: .red, to: .blue, pct: flag ? 1.0 : 0.0, text: Text("Hello from SwiftUI").font(.largeTitle)))
            
            Button("Animate"){
                withAnimation(.linear(duration: 2)){
                   self.flag.toggle()
                }
            }
        }.navigationBarTitle("Text Color Animation", displayMode: .automatic)
    }
}

struct TextColorAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TextColorAnimationView()
    }
}

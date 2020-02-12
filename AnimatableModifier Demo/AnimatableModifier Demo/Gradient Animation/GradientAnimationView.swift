//
//  GradientAnimationView.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct GradientAnimationView: View {
    @State private var flag = false
    
    var body: some View {
        let grad1: [UIColor] = [.blue, .green, .red]
        let grad2: [UIColor] = [.red, .yellow, .green]
        
        return VStack{
            Color.clear
                .frame(width: 200, height: 150)
                .modifier(GradientModifier(from: grad1, to: grad2, pct: flag ? 1: 0))
            
            Button("Animate"){
                withAnimation(.linear(duration: 2)){
                    self.flag.toggle()
                }
            }  
        }.navigationBarTitle("Gradient Color Animation", displayMode: .automatic)
    }
}

struct GradientAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        GradientAnimationView()
    }
}

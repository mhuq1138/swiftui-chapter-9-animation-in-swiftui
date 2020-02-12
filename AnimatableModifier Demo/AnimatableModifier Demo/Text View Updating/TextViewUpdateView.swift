//
//  TextViewUpdateView.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct TextViewUpdateView: View {
    @State private var pct:CGFloat = 0.0
    
    var body: some View {
        VStack{
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 350, height: 200)
                .modifier(ProgressBarUpdater(pct: pct))
                
            Button("Animate"){
                withAnimation(.linear(duration: 2)){
                    self.pct = 1.0
                }
            }
        }.frame(width: 300, height: 300)
         .navigationBarTitle("Text View Updating ", displayMode: .automatic)
    }
}

struct TextViewUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        TextViewUpdateView()
    }
}

//
//  AnimatingGraphView.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct AnimatingGraphView: View {
    @State var vector: CustomAnimatableVector =  CustomAnimatableVector(count: 20)
    
    var body: some View {
        return VStack{
               
            AnimatableGraph(controlPoints: self.vector)
                .stroke(Color.blue, lineWidth: 3)
                
            Button("Animate"){
                withAnimation(.interpolatingSpring(stiffness: 2.3, damping: 0.1)){
                        self.vector = CustomAnimatableVector(with: [0.2, 0.5, 0.3,0.1, 0.3, 0.2,0.4, 0.1, 0.2,0.1,0.2, 0.5, 0.3,0.1, 0.3, 0.2,0.4, 0.1, 0.2,0.1])
                    }
                }
        }.padding(20)
        .frame(width: 400, height: 400)
        .navigationBarTitle("Animating Graph", displayMode: .automatic)
    }
}

struct AnimatingGraphView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGraphView()
    }
}

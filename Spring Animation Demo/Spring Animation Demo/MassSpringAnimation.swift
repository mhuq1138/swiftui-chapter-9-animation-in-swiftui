//
//  MassSpringAnimation.swift
//  Spring Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MassSpringAnimation: View {
    @State var mass: Double = 50.0
    @State var stiffness: Double = 80.0
    @State var damping: Double = 20.0
    @State var initialVel: Double = 0.0
    @State var rotationFlag = false
       
    @State private var offset = CGSize(width: -150, height: 0)
       
       var body: some View {
           VStack{
              Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 100)
                .rotationEffect(rotationFlag ? Angle(degrees: 90):Angle(degrees: 0))
                .padding(.bottom, 100)
            
              SliderDisplay(sliderValue: $mass, label: "Mass:     ", lower: 20.0, upper: 100.0)
              SliderDisplay(sliderValue: $stiffness, label: "Stiffness:", lower: 20.0, upper: 100.0)
              SliderDisplay(sliderValue: $damping, label: "Damping:", lower: 5.0, upper: 40.0)
              SliderDisplay(sliderValue: $initialVel, label: "InitialVel:", lower: 0.0, upper: 30.0)
            
               Button("Move Circle"){
                     withAnimation(.interpolatingSpring(mass: self.mass, stiffness: self.stiffness, damping: self.damping, initialVelocity: self.initialVel)){
                    self.rotationFlag.toggle()
                }
            }
        }.navigationBarTitle("Spring Animation with Mass-Spring", displayMode: .inline)
    }
}

struct MassSpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MassSpringAnimation()
            .previewLayout(.fixed(width: 400, height: 500))
    }
}

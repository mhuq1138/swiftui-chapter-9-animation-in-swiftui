//
//  SpringAnimationWithResponse.swift
//  Spring Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SpringAnimationWithResponse: View {
    @State var response: Double = 5.0
    @State var damping: Double = 0.5
    @State var blending: Double = 0.5
    @State var sign = 1
    
    @State private var offset = CGSize(width: -150, height: 0)
    
    var body: some View {
        VStack{
           MyCircle(color:.blue)
               .offset(offset)
               .padding(.bottom, 20)
               .animation(.spring(response: response, dampingFraction: damping, blendDuration: blending))
            
           MyCircle(color:.red)
               .padding(.bottom, 30)
               .offset(offset)
               .animation(.interactiveSpring(response: response, dampingFraction: damping, blendDuration: blending))
            
           SliderDisplay(sliderValue: $response, label: "Response: ", lower: 0.0, upper: 10.0)
           SliderDisplay(sliderValue: $damping, label: "Damping:  ", lower: 0.0, upper: 1.0)
           SliderDisplay(sliderValue: $blending, label: "Blending:", lower: 0.0, upper: 1.0)
            Button("Move Circle"){
                self.sign = -self.sign
                self.offset = CGSize(width:  -150*self.sign, height: 0)
            }
        }.navigationBarTitle("Spring Animation with Respose", displayMode: .inline)
    }
}

struct SpringAnimationWithResponse_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimationWithResponse()
            .previewLayout(.fixed(width: 400, height: 400))
    }
}

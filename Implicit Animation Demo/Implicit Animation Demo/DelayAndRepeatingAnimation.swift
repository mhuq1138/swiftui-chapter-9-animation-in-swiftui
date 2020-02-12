//
//  DelayAndRepeatingAnimation.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/7/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct DelayAndRepeatingAnimation: View {
    @State private var flag = true
    
    var body: some View {
        let leadingOffset = CGSize(width: -150, height: 0)
        let trailingOffset = CGSize(width: 150, height: 0)
        
        return VStack(spacing:50){
                   MyCircle(color: .blue)
                       .offset(flag ? leadingOffset:trailingOffset)
                       .animation(Animation.linear(duration:2).delay(2))
                
                   MyCircle(color: .green)
                       .offset(flag ? leadingOffset:trailingOffset)
                       .animation(Animation.easeIn(duration:4).repeatCount(4, autoreverses: false))
            
                   MyCircle(color: .red)
                       .offset(flag ? leadingOffset:trailingOffset)
                       .animation(Animation.easeOut(duration:2).repeatCount(3, autoreverses: true))
            
                   MyCircle(color: .orange)
                       .offset(flag ? leadingOffset:trailingOffset)
                       .animation(Animation.easeInOut(duration:1)
                       .repeatCount(10).speed(4.0))
            
                   Button("Move Circle"){
                             self.flag.toggle()
                   }
        }.navigationBarTitle("Delay and Repeating Animation", displayMode: .automatic)
    }
}

struct DelayAndRepeatingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DelayAndRepeatingAnimation()
    }
}

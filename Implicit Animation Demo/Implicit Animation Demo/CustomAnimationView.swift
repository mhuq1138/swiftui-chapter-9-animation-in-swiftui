//
//  CustomAnimationView.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/7/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct CustomAnimationView: View {
     @State private var flag = true
       
       var body: some View {
           let leadingOffset = CGSize(width: -150, height: 0)
           let trailingOffset = CGSize(width: 150, height: 0)
           
           return VStack(spacing:50){
               MyCircle(color: .blue)
                   .offset(flag ? leadingOffset:trailingOffset)
                   .animation(.linear(duration:5))
               
               MyCircle(color: .green)
                   .offset(flag ? leadingOffset:trailingOffset)
                   .animation(.easeIn(duration:4))
               
               MyCircle(color: .red)
                   .offset(flag ? leadingOffset:trailingOffset)
                   .animation(.easeOut(duration:3))
               
               MyCircle(color: .orange)
                   .offset(flag ? leadingOffset:trailingOffset)
                   .animation(.easeInOut(duration:2))
               
               Button("Move Circle"){
                   self.flag.toggle()
               }.padding(20)
            
           }.navigationBarTitle("Custom Animations", displayMode: .automatic)
       }
}

struct CustomAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationView()
    }
}

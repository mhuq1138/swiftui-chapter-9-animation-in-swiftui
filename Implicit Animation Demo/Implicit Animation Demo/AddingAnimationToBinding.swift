//
//  AddingAnimationToBinding.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct AddingAnimationToBinding: View {
     @State private var scaleFactor:CGFloat = 1
       
       var body: some View {
           VStack{
               VStack( spacing: 200){
                   Circle()
                       .fill(Color.red)
                       .frame(width: 50, height: 50)
                       .overlay(Text("Hello").foregroundColor(.white))
                       .scaleEffect(scaleFactor)
                   
                   Text("SwiftUI")
                       .font(.title)
                       .foregroundColor(.white)
                       .padding(3)
                       .background(Color.blue)
                       .scaleEffect(scaleFactor)
               }.padding(.bottom, 50)
               
               Stepper("Scale amount", value: $scaleFactor.animation(.linear(duration: 2)), in: 1...10)
               .padding(20)
           }.navigationBarTitle("Adding Animation to Binding", displayMode: .automatic)
       }
}

struct AddingAnimationToBinding_Previews: PreviewProvider {
    static var previews: some View {
        AddingAnimationToBinding()
    }
}

//
//  ContentView.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/7/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Simple Implicit Animation", destination: SimpleAnimation())
                
                NavigationLink("Move and Change Color", destination: MoveAndChangeColor())
                
                NavigationLink("Custom Animations", destination: CustomAnimationView())
                
                NavigationLink("Delay and Repeating Animation", destination: DelayAndRepeatingAnimation())
                
                NavigationLink("Adding Animation to Binding", destination: AddingAnimationToBinding())
                
                NavigationLink("Chaining Animation", destination: ChainingAnimation())
                
            }.navigationBarTitle("Implicit Animation Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 400, height: 400))
    }
}

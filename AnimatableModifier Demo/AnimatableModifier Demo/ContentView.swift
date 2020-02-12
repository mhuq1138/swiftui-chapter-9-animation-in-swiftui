//
//  ContentView.swift
//  AnimatableModifier Demo
//
//  Created by Mazharul Huq on 2/12/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: TextViewUpdateView()){
                    Text("Text View Updating")
                }
                
                NavigationLink(destination: TextColorAnimationView()){
                    Text("Text Color Animation")
                }
                
                NavigationLink(destination: GradientAnimationView()){
                    Text("Gradient Color Animation")
                }
                
            }.navigationBarTitle("AnimatableModifier Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: ShakingAnimationView()){
                    Text("Shaking View Animation")
                }
                
                NavigationLink(destination: SkewAnimationView()){
                    Text("Skew Animation")
                }
                
                NavigationLink(destination: JumpingAnimationView()){
                                   Text("Jumping Bean Animation")
                               }
                
                NavigationLink(destination: RunningHareView()){
                    Text("Hare Running Along a Path")
                }
                
                NavigationLink(destination: IgnoreLayoutView()){
                    Text("Ignore Layout")
                }
                
            }.navigationBarTitle("GeometryEffect Animation Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

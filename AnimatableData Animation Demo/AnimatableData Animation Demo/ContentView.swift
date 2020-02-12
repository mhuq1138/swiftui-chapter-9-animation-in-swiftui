//
//  ContentView.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var base:CGFloat = 30.0
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: SpringingLine()){
                    Text("Springy Line")
                }
                
                NavigationLink(destination: TriangleToPolygon()){
                    Text("Triangle to Polygon")
                }
                
                NavigationLink(destination: OscillatingWedge()){
                    Text("Oscillation wedge")
                }
                
                NavigationLink(destination: AnimatingGraphView()){
                    Text("Animating Graph")
                }
                
            }.navigationBarTitle("AnimatableData Animation Demo", displayMode: .inline)
        }
        
    }

}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

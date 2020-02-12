//
//  ContentView.swift
//  Explicit Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         NavigationView{
             List{
                  NavigationLink("Simple Explicit Animation", destination: ScaleAndMove())
                       
                   NavigationLink("Two Circle Animation", destination: TwoCircleMotion())
                       
             }.navigationBarTitle("Explicit Animation Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

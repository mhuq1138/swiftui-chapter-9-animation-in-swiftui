//
//  IgnoreLayoutView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct IgnoreLayoutView: View {
    @State private var animate = false
        
        var body: some View {
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.green)
                    .frame(width: 300, height: 50)
                    .overlay(ShowSize())
                    .modifier(IgnoreEffect(x: animate ? -10 : 10))
                
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 50)
                    .overlay(ShowSize())
                    .modifier(IgnoreEffect(x: animate ? 10 : -10).ignoredByLayout())
                
            }.onAppear {
                withAnimation(Animation.easeInOut(duration: 1.0).repeatForever()) {
                    self.animate = true
                }
            }.navigationBarTitle("Ignore Layout", displayMode: .automatic)
        }
    }

struct ShowSize: View {
    var body: some View {
        GeometryReader { proxy in
            Text("x = \(Int(proxy.frame(in: .global).minX))")
                .foregroundColor(.white)
        }
    }
}

struct IgnoreLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreLayoutView()
    }
}

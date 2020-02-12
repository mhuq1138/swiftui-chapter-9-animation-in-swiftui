//
//  TriangleToPolygon.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct TriangleToPolygon: View {
    @State private var sides = 3
    
    var body: some View {
        VStack{
            MyPolygon(sides: sides)
                .stroke(Color.blue, lineWidth: 4)
                .padding(20)
            
            Button("Animate"){
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 0.80)){
                    
                    self.sides = 10
                    }
            }
        }.navigationBarTitle("Triangle to Polygon", displayMode: .automatic)
    }
}

struct TriangleToPolygon_Previews: PreviewProvider {
    static var previews: some View {
        TriangleToPolygon()
    }
}

//
//  MyPolygon.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyPolygon: Shape {
    var sides: Int
    var doubleSides:Double
    
    init(sides:Int){
        self.sides = sides
        self.doubleSides = Double(sides)
    }
    
    var animatableData: Double{
        get{ doubleSides}
        set {doubleSides = newValue}
    }
        
    func path(in rect: CGRect) -> Path {
        let h = min(rect.size.width,rect.size.height)/2.0
        let c = CGPoint(x: rect.size.width/2.0, y: rect.size.height/2.0)
        
        var p = Path()
        for i in 0..<sides {
            let angle = 2.0 * .pi*Double(i)/doubleSides
            let pt = CGPoint(x: c.x + CGFloat(cos(angle))*h, y: c.y + CGFloat(sin(angle))*h)
            if i == 0{
                p.move(to:pt)
            }
            else{
                p.addLine(to: pt)
            }
        }
        p.closeSubpath()
        return p
    }
}

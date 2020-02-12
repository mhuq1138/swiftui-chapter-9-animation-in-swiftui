//
//  MyLine.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyLine: Shape {
    var width: CGFloat
    
    var animatableData: CGFloat{
        get{ width }
        set{ width = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        p.move(to: CGPoint(x: rect.size.width/2-width, y: 0))
        p.addLine(to: CGPoint(x: rect.size.width/2+width, y: 0))
        
        return p
    }
}


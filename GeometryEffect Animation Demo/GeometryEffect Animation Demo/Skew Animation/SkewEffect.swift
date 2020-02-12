//
//  SkewEffect.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SkewEffect: GeometryEffect {
    var offset:CGFloat
    var cycle:CGFloat
    
    init(offset:CGFloat,cycle:CGFloat){
        self.offset = offset
        self.cycle = cycle
    }
    
    var animatableData: AnimatablePair<CGFloat,CGFloat>{
        get { return AnimatablePair<CGFloat,CGFloat>(offset,cycle)}
        set{
            offset = newValue.first
            cycle = newValue.second
        }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let skew = offset * sin( .pi * cycle)
        return ProjectionTransform(CGAffineTransform(a: 1, b: 0, c: skew, d: 1, tx: 0, ty: 0))
    }
}



//
//  JumpEffect.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct JumpEffect: GeometryEffect {

    var offsetValue: Double
    
    var animatableData: Double {
        get { offsetValue }
        set { offsetValue = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        
        let value = 1.0-(cos(2*offsetValue*Double.pi)+1)/2
        let translation   = CGFloat(-50*value)
        let affineTransform = CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: translation)
        
        return ProjectionTransform(affineTransform)
    }
}

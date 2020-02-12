//
//  IgnoreEffect.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct IgnoreEffect: GeometryEffect {
    var x: CGFloat = 0
    
    var animatableData: CGFloat {
        get { x }
        set { x = newValue }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        return ProjectionTransform(CGAffineTransform(translationX: x, y: 0))
    }
}

//
//  ShakeEffect.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ShakeEffect: GeometryEffect {
    var amplitude: CGFloat
    var shakeCount:Int
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
            amplitude * sin(animatableData * .pi * CGFloat(shakeCount)), y: 0))
    }
}

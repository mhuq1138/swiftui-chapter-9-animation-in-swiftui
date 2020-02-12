//
//  AnimatableGraph.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct AnimatableGraph: Shape {
    var controlPoints: CustomAnimatableVector
    
    var animatableData: CustomAnimatableVector {
        set { self.controlPoints = newValue }
        get { return self.controlPoints }
    }
    
    func point(index: Int, rect: CGRect) -> CGPoint {
        let value = self.controlPoints.values[index]
        let x = Double(index)/Double(self.controlPoints.values.count)*Double(rect.width)
        let y = Double(rect.height)*value
        return CGPoint(x: x, y: y)
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            
            let startPoint = self.point(index: 0, rect: rect)
            path.move(to: startPoint)
            
            var i = 1
            while i < self.controlPoints.values.count {
                path.addLine(to:  self.point(index: i, rect: rect))
                i += 1
            }
        }
    }
}


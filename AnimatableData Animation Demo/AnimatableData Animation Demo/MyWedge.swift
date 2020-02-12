//
//  MyWedge.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/9/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyWedge: Shape {
    var angleOffset: Double // in radians
    var wedgeWidth: Double // in radians
    
    public var animatableData: AnimatablePair<Double, Double> {
        get {
           AnimatablePair(Double(angleOffset), Double(wedgeWidth))
        }

        set {
            self.angleOffset = newValue.first
            self.wedgeWidth = newValue.second
        }
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            let width = Double(rect.width)
            let height = Double(rect.height)
            
            let middlePoint = CGPoint(x: width/2, y: height/2)
            let startingPoint = CGPoint(x: width/2 + cos(self.angleOffset)*width/2, y: height/2 + sin(self.angleOffset)*height/2)
            path.move(to: middlePoint)
            path.addLine(to: startingPoint)
            path.addArc(center: middlePoint, radius: rect.width/2, startAngle: Angle(radians: self.angleOffset), endAngle: Angle(radians: self.angleOffset+self.wedgeWidth), clockwise: false, transform: CGAffineTransform.init(scaleX: 1, y: rect.height/rect.width).translatedBy(x: 0, y: (rect.width-rect.height)/2))
            path.addLine(to: middlePoint)
        }
    }
}


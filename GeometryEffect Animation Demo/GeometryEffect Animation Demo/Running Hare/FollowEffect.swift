//
//  FollowEffect.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct FollowEffect: GeometryEffect {
    var pct: CGFloat 
    let path:Path
    let rotate:Bool
    
    var animatableData: CGFloat{
        get { return pct}
        set {pct = newValue }
    }
    
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        if !rotate { // Skip rotation login
            let pt = percentToPoint(pct)
            
            return ProjectionTransform(CGAffineTransform(translationX: pt.x, y: pt.y))
        } else {
            let pt1 = percentToPoint(pct)
            let pt2 = percentToPoint(pct - 0.01)
            
            let angle = getDirection(pt1, pt2)
            let transform = CGAffineTransform(translationX: pt1.x, y: pt1.y).rotated(by: angle)
            
            return ProjectionTransform(transform)
        }
    }
    
    func percentToPoint(_ percent:CGFloat)-> CGPoint{
        let delta: CGFloat = 0.01
        let comp: CGFloat = 1 - delta

        let pct = percent > 1 ? 0 : (percent < 0 ? 1 : percent)

        let f = pct > comp ? CGFloat(1-delta) : pct
        let t = pct > comp ? CGFloat(1) : pct + delta
        let tp = path.trimmedPath(from: f, to: t)

        return CGPoint(x: tp.boundingRect.midX, y: tp.boundingRect.midY)
    }
    
    func getDirection(_ pt1:CGPoint, _ pt2:CGPoint)-> CGFloat{
        
        let a = pt2.x - pt1.x
        let b = pt2.y - pt1.y
        
        let angle = a < 0 ? atan(Double(b / a)) : atan(Double(b / a)) - Double.pi
        
        return CGFloat(angle)
    }
    
}



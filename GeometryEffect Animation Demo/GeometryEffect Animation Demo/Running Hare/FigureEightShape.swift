//
//  FigureEightShape.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct FigureEightShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        return FigureEightShape.createPath(in: rect)
    }

    static func createPath(in rect: CGRect) -> Path {
        let height = rect.size.height
        let width = rect.size.width
        
        var path = Path()

        path.move(to: CGPoint(x:0, y: 0))
        path.addLine(to: CGPoint(x: width/2, y: 0))
        path.addLine(to: CGPoint(x: width/2, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width, y: height/2))
        path.addLine(to: CGPoint(x: 0, y: height/2))
        path.addLine(to: CGPoint(x: 0, y: 0))
        
        return path
    }
}

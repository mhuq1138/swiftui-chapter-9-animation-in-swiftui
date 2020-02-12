//
//  CustomAnimatableVector.swift
//  AnimatableData Animation Demo
//
//  Created by Mazharul Huq on 2/10/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct CustomAnimatableVector {
    
    var values: [Double]
    
    init(count: Int = 1){
        self.values = [Double](repeating: 0.0, count: count)
    }
    
    init(with values: [Double]){
        self.values = values
    }
}

extension CustomAnimatableVector:VectorArithmetic{
    
    var magnitudeSquared: Double {
        var sum: Double = 0.0
        
        for index in 0..<self.values.count {
            sum += self.values[index]*self.values[index]
        }
        return Double(sum)
    }
    
    mutating func scale(by rhs: Double) {
        for index in 0..<values.count {
            values[index] *= rhs
        }
    }
    
    static var zero: CustomAnimatableVector {
        CustomAnimatableVector()
    }
    
    static func - (lhs: CustomAnimatableVector, rhs: CustomAnimatableVector) -> CustomAnimatableVector {
        var retValues = [Double]()
        
        for index in 0..<min(lhs.values.count, rhs.values.count) {
            retValues.append(lhs.values[index] - rhs.values[index])
        }
        return CustomAnimatableVector(with: retValues)
    }
    
    static func -= (lhs: inout CustomAnimatableVector, rhs: CustomAnimatableVector) {
        lhs = lhs - rhs
    }
    
    static func + (lhs: CustomAnimatableVector, rhs: CustomAnimatableVector) -> CustomAnimatableVector {
           var retValues = [Double]()
           
           for index in 0..<min(lhs.values.count, rhs.values.count) {
               retValues.append(lhs.values[index] + rhs.values[index])
           }
           return CustomAnimatableVector(with: retValues)
       }
    
    static func += (lhs: inout CustomAnimatableVector, rhs: CustomAnimatableVector) {
        lhs = lhs + rhs
    }
}


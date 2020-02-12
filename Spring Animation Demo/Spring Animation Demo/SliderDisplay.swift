//
//  SliderDisplay.swift
//  Spring Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct SliderDisplay: View {
    @Binding var sliderValue:Double
        let label:String
        let lower:Double
        let upper:Double
        
        var body: some View {
            let value = String(format: "%0.1f", arguments: [sliderValue])
            
           return HStack{
                Text(label)
                Slider(value: $sliderValue, in: lower...upper)
                Text(value)
            }.padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
        }
    }

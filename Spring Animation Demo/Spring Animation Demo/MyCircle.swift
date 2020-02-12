//
//  MyCircle.swift
//  Spring Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyCircle: View {
    let color:Color
        var body: some View {
            Circle()
               .fill(color)
               .frame(width: 50, height: 50, alignment: .center)
        }
    }

    struct MyCircle_Previews: PreviewProvider {
        static var previews: some View {
            MyCircle(color: .red)
        }
    }

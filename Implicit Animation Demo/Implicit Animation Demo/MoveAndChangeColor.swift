//
//  MoveAndChangeColor.swift
//  Implicit Animation Demo
//
//  Created by Mazharul Huq on 2/7/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MoveAndChangeColor: View {
    @State private var flag = true
    
    var body: some View {
        VStack{
             Circle()
                .fill(flag ? Color.red: Color.blue)
                .frame(width: 50, height: 50)
                .offset(flag ? CGSize(width: -150, height: 0): CGSize(width: 150, height: 0))
                .animation(.default)
                
            Button("Animate"){
                self.flag.toggle()
            }.padding(50)
            
        }.navigationBarTitle("Move and Changer Color", displayMode: .automatic)
    }
}

struct MoveAndChangeColor_Previews: PreviewProvider {
    static var previews: some View {
        MoveAndChangeColor()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}

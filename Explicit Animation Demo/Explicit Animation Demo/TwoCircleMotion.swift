//
//  TwoCircleMotion.swift
//  Explicit Animation Demo
//
//  Created by Mazharul Huq on 2/8/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct TwoCircleMotion: View {
     @State private var moveFlag = false
        var body: some View {
            VStack{
                Button("Animate"){
                    withAnimation(.linear(duration: 3)){
                        self.moveFlag.toggle()
                    }
                }.padding(30)
                
                HStack(alignment: .top, spacing:40){
                    MyCircle(color: .blue)
                        .offset(moveFlag ? CGSize(width: 0.0, height: 200.0): CGSize(width: 0.0, height: 0.0))
                    
                    MyCircle(color: .orange)
                        .offset(moveFlag ? CGSize(width: 0.0, height: 400.0): CGSize(width: 0.0, height: 0.0))
                        .animation(.easeIn(duration: 1.5))
                }
                Spacer()
            }.navigationBarTitle("Two Circle Animation ", displayMode: .inline)
        }
    }

    struct TwoCircleMotion_Previews: PreviewProvider {
        static var previews: some View {
            TwoCircleMotion()
                .previewLayout(.fixed(width: 400, height: 200))
        }
    }

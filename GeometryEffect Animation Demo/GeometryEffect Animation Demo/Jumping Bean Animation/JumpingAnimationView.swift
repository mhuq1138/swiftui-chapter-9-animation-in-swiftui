//
//  JumpingAnimationView.swift
//  GeometryEffect Animation Demo
//
//  Created by Mazharul Huq on 2/11/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct JumpingAnimationView: View {
    @State var selectedOption : Int = 0
    @State var menuOffset : Double = 0
    
    let itemWidth: CGFloat = 80
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .fill(Color.orange)
                .frame(width:10, height:10)
                .offset(x: CGFloat(self.selectedOption) * self.itemWidth + itemWidth/2.0, y: 10.0 )
                .modifier(JumpEffect(offsetValue: menuOffset))
            HStack(spacing: 1) {
                ForEach(0..<5) { index in
                    Button(action:{
                        withAnimation(.spring()) {
                            self.selectedOption = index
                            self.menuOffset += 1
                        }
                    }) {
                        Rectangle()
                    }
                    .frame(width: self.itemWidth, height: 80)
                    .offset(x: 0, y: self.selectedOption == index ? 10:0)     
                }
            }
        }.navigationBarTitle("Jumping Bean Animation", displayMode: .automatic)
    }
}

struct JumpingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        JumpingAnimationView()
    }
}

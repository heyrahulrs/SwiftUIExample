//
//  OffsetAnimation.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct OffsetAnimation : View {
    
    @State var xOffset: CGFloat = 0.0
    @State var yOffset: CGFloat = 0.0

    var body: some View {
        
        MyAnimationImage()
            .offset(x: xOffset, y: yOffset)
            .onTapGesture {
                withAnimation {
                    self.xOffset = CGFloat.random(in: -200...200)
                    self.yOffset = CGFloat.random(in: -200...200)
                }
            }
        
    }
    
}

#if DEBUG
struct OffsetAnimation_Previews : PreviewProvider {
    static var previews: some View {
        OffsetAnimation()
    }
}
#endif

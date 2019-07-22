//
//  OffsetAnimation.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct OffsetAnimation : View {
    
    @State var xOffset: Length = 0.0
    @State var yOffset: Length = 0.0

    var body: some View {
        
        MyAnimationImage()
            .offset(x: xOffset, y: yOffset)
            .tapAction {
                withAnimation {
                    self.xOffset = Length.random(in: -200...200)
                    self.yOffset = Length.random(in: -200...200)
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

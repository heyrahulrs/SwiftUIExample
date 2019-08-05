//
//  RotateAnimation.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct RotateAnimation : View {
    
    @State var angle: Angle = .zero
    
    var body: some View {
        MyAnimationImage()
            .rotationEffect(angle, anchor: .center)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.4)) {
                    self.angle += Angle(degrees: 30.0)
                }
            }
    }
    
}

#if DEBUG
struct RotateAnimation_Previews : PreviewProvider {
    static var previews: some View {
        RotateAnimation()
    }
}
#endif

//
//  ScaleAnimation.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ScaleAnimation : View {
    
    @State var scale: CGFloat = 0.6
    
    var body: some View {
        
        MyAnimationImage()
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation(.spring()) {
                    self.scale += 0.1
                    if self.scale > 1.4 {
                        self.scale = 0.6
                    }
                }
            }
        
    }
    
}

struct MyAnimationImage : View {
    
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 200, height: 200)
    }
    
}

#if DEBUG
struct ScaleAnimation_Previews : PreviewProvider {
    static var previews: some View {
        ScaleAnimation()
    }
}
#endif

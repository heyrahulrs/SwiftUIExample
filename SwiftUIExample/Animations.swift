//
//  Animations.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct Animations : View {
    
    var body: some View {
        
        Group {
            NavigationLink(destination: ScaleAnimation()) {
                Text("Scale")
            }
            
            NavigationLink(destination: RotateAnimation()) {
                Text("Rotate")
            }
            
            NavigationLink(destination: OffsetAnimation()) {
                Text("Offset")
            }
        }
        
    }
    
}

#if DEBUG
struct Animations_Previews : PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
#endif

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
            NavigationButton(destination: ScaleAnimation()) {
                Text("Scale")
            }
            
            NavigationButton(destination: RotateAnimation()) {
                Text("Rotate")
            }
            
            NavigationButton(destination: OffsetAnimation()) {
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

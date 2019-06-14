//
//  AngularGradientView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct AngularGradientView : View {
    
    var body: some View {
        
        Rectangle()
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [.red, .yellow]),
                    center: .center,
                    angle: Angle(degrees: 45.0)
                )
            )
            .cornerRadius(24.0)
            .frame(width: 240, height: 240)
        
    }
    
}

#if DEBUG
struct AngularGradientView_Previews : PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
#endif

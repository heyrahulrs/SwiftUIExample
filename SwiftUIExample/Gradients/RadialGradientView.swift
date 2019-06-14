//
//  RadialGradientView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct RadialGradientView : View {
    
    var body: some View {
        
        Rectangle()
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .black]),
                    center: .center,
                    startRadius: 10.0,
                    endRadius: 160.0
                )
            )
            .cornerRadius(24.0)
            .frame(width: 240, height: 240)
        
    }
    
}

#if DEBUG
struct RadialGradientView_Previews : PreviewProvider {
    static var previews: some View {
        RadialGradientView()
    }
}
#endif

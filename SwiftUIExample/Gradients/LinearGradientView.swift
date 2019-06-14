//
//  LinearGradientView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct LinearGradientView : View {
    
    var body: some View {
        
        Rectangle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.pink, .purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .cornerRadius(24.0)
            .frame(width: 240, height: 240)
        
    }
    
}

#if DEBUG
struct LinearGradientView_Previews : PreviewProvider {
    static var previews: some View {
        LinearGradientView()
    }
}
#endif

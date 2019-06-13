//
//  TapGestureView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct TapGestureView : View {
    
    @State var selectedColor: Color = .red
    
    var colors: [Color] = [.red, .green, .blue, .purple, .black, .pink, .orange, .yellow]
    
    var body: some View {
        
        VStack(spacing: 20.0){
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 200, height: 120)
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            self.selectedColor = self.colors.randomElement()!
                        }
                    )
            
            Text("Tap rectangle to change its color.")
            
        }
        
    }
    
}

#if DEBUG
struct TapGestureView_Previews : PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
#endif

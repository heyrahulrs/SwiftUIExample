//
//  DragGestureView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct DragGestureView : View {
    
    @State var translation: CGSize = CGSize(width: 0, height: 0)
    @State var isDragging: Bool = false
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 200, height: 120)
                .offset(translation)
                .animation(.spring())
                .gesture(
                    DragGesture(minimumDistance: 10)
                        .onChanged { value in
                            self.translation = value.translation
                            self.isDragging = true
                        }
                        
                        .onEnded { _ in
                            self.translation = .zero
                            self.isDragging = false
                        }
                )
            
            if !isDragging {
                Text("Drag Me")
                .foregroundColor(.white)
            }
            
        }
    }
}

#if DEBUG
struct PanGestureView_Previews : PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
#endif

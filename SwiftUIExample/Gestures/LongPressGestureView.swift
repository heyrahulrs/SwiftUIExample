//
//  LongPressGestureView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct LongPressGestureView : View {
    
    @State var isLongPressing: Bool = false
    
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 200, height: 120)
            .scaleEffect(isLongPressing ? 0.8 : 1.0)
            .gesture(
                LongPressGesture(minimumDuration: 0.9, maximumDistance: 20.0)
                    .onChanged { _ in
                        withAnimation(.spring()) {
                            self.isLongPressing = true
                        }
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            self.isLongPressing = false
                        }
                    }
            )
    }
}

#if DEBUG
struct LongPressGestureView_Previews : PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
#endif

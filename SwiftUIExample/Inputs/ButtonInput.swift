//
//  ButtonInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ButtonInput : View {
    
    @State var showImage = true

    var body: some View {
        
        VStack {
            if showImage {
                TurtleRockImage()
            }
            
            Button(action: {
                withAnimation {
                    self.showImage.toggle()
                }
            }) {
                Text("Tap me!")
            }
        }
        
    }
}

#if DEBUG
struct ButtonView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonInput()
    }
}
#endif

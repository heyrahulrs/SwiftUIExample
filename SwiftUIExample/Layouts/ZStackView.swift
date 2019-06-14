//
//  ZStackView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/14/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct ZStackView : View {
    
    var body: some View {
        
        //Try playing with the alignment
        
        ZStack(alignment: .center) {
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 180, height: 180)
                .opacity(0.6)
            
            Circle()
                .fill(Color.red)
                .frame(width: 140, height: 140)
                .opacity(0.6)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .opacity(0.6)
            
            Circle()
                .fill(Color.pink)
                .frame(width: 60, height: 60)
                .opacity(0.6)
            
        }
        
    }
    
}

#if DEBUG
struct ZStackView_Previews : PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
#endif

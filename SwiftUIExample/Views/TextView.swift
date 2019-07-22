//
//  TextView.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct TextView : View {
    
    var body: some View {
        
        VStack(spacing: 10.0) {
            
            Text("Large Title")
                .font(.largeTitle)
            
            Text("Title")
                .font(.title)
            
            Text("Body")
                .font(.body)
            
            Text("Subheadline")
                .font(.subheadline)
            
            Text("Footnote")
                .font(.footnote)
            
            Text("Caption")
                .font(.caption)
            
            Text("Text that extends\nto 2 lines")
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            
            Text("Text With Foreground Color")
                .foregroundColor(.secondary)
            
            Text("System Red Colored Text")
                .foregroundColor(Color.red)
            
            Text("Rounded Text of size 24.0")
                .font(.system(size: 24.0, design: .rounded))
            
        }
        
    }
    
}

#if DEBUG
struct TextView_Previews : PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
#endif

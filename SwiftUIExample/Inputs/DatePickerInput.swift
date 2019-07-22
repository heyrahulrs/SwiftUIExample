//
//  DatePickerInput.swift
//  SwiftUIExample
//
//  Created by Rahul Sharma on 6/13/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import SwiftUI

struct DatePickerInput : View {
    
    @State var selectedDate = Date()
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter
    }
    
    var body: some View {
        
        VStack {
            DatePicker("Select Date",
                selection: $selectedDate,
                in: ...Date(),
                displayedComponents: [.date])
            
            Text("Selected date is \(selectedDate, formatter: dateFormatter)")
        }
        
    }
}

#if DEBUG
struct DatePickerInput_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerInput()
    }
}
#endif

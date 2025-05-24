//
//  DisplayView.swift
//  Calculator
//
//  Created by Julien Eyriès on 25/12/2020.
//

import SwiftUI

struct DisplayView: View {
    
    let display: String
    
    var body: some View {
        Text(display)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
            //.minimumScaleFactor(0.5)
            .font(Font.system(size: 100).monospacedDigit())
            .padding()
            //.background(Color.green)
    }
    
}

#Preview {
    DisplayView(display: "3.14159")
}

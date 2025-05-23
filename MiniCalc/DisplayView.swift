//
//  DisplayView.swift
//  Calculator
//
//  Created by Julien Eyriès on 25/12/2020.
//

import SwiftUI

struct DisplayView: View {
    
    let display: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Text(display)
            .lineLimit(1)
            .minimumScaleFactor(0.1)
            .font(Font.system(size: 100).monospacedDigit())
            .padding()
            .frame(width: width, height: height, alignment: .bottomTrailing)
    }
    
}

#Preview {
    DisplayView(display: "123456789", width: 512, height: 150)
}

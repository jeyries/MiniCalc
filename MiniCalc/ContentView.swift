//
//  ContentView.swift
//  MiniCalc
//
//  Created by Julien on 23/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = ViewModel()
    
    var body: some View {
        GeometryReader { proxy in
            
            let padding: CGFloat = 10
            let width = proxy.size.width - 2*padding
            let buttonWidth = width/4
            let buttonHeight = buttonWidth
            
            return VStack(alignment: .trailing, spacing: 0) {
                
                DisplayView(display: viewModel.display)
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .bottomTrailing)
                    //.background(Color.green)
                
                KeyboardView(width: buttonWidth,
                             height: buttonHeight,
                             press: viewModel.press)
                    .padding(padding)
                    //.background(Color.gray)
            }
        }
    }
    
}

#Preview {
    ContentView()
}

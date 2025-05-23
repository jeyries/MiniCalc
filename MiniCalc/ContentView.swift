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
            
            let display: CGFloat = 150
            let padding: CGFloat = 10
            let height = proxy.size.height - display - 2*padding
            let width = proxy.size.width - 2*padding
            let buttonWidth = width/4
            let buttonHeight = min(width/4, height/5)
            
            return VStack(spacing: 0) {
                Spacer()
                
                DisplayView(display: viewModel.display,
                            width: width + 2*padding,
                            height: display)
                
                KeyboardView(width: buttonWidth, height: buttonHeight, press: viewModel.press)
                .padding(padding)
            }
        }
    }
    
}

#Preview {
    ContentView()
}

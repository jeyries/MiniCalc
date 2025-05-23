//
//  KeyboardView.swift
//  Calculator
//
//  Created by Julien Eyriès on 25/12/2020.
//

import SwiftUI

struct KeyboardView: View {
    
    let width: CGFloat
    let height: CGFloat
    var press: (@MainActor (String) -> Void)?
    
    func button(key: String,
                color: ButtonView.ButtonColor = . darkGray,
                style: ButtonView.ButtonStyle = .simple) -> some View {
        return ButtonView(key: key,
                          width: width,
                          height: height,
                          style: style,
                          color: color,
                          action: press)
    }
    
    var body: some View {
        VStack(spacing: 0)  {
            HStack(spacing: 0) {
                button(key: "C", color: .lightGray)
                button(key: "P", color: .lightGray)
                button(key: "B", color: .lightGray)
                button(key: "/", color: .orange)
            }
            HStack(spacing: 0)  {
                button(key: "7")
                button(key: "8")
                button(key: "9")
                button(key: "*", color: .orange)
            }
            HStack(spacing: 0)  {
                button(key: "4")
                button(key: "5")
                button(key: "6")
                button(key: "-", color: .orange)
            }
            HStack(spacing: 0)  {
                button(key: "1")
                button(key: "2")
                button(key: "3")
                button(key: "+", color: .orange)
            }
            HStack(spacing: 0)  {
                button(key: "0", style: .double)
                button(key: ".")
                button(key: "E", color: .orange)
            }
        }
        .frame(width: 4*width, height: 5*height, alignment: .center)
    }
    
}

#Preview {
    KeyboardView(width: 64, height: 64)
}

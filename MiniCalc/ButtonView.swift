//
//  ButtonView.swift
//  Calculator
//
//  Created by Julien Eyriès on 10/12/2020.
//

import SwiftUI



struct ButtonView: View {
    
    let key: String
    var width: CGFloat = 100
    var height: CGFloat = 100
    var style: ButtonStyle = .simple
    var color: ButtonColor = .darkGray
    var action: (@MainActor (String) -> Void)?
    
    enum ButtonStyle {
        case simple
        case double
    }
    
    enum ButtonColor {
        case darkGray
        case lightGray
        case orange
    }
    
    let b: CGFloat = 5
    var w: CGFloat { return width-2*b }
    var h: CGFloat { return height-2*b }
    
    var body: some View {
        Button(action: { action?(key) }) {
            ZStack(alignment: .leading) {
                backgroundColor
                    .frame(width: style.frameWidth * width - 2*b, height: h, alignment: .center)
                    .cornerRadius(20)
                
                keyBody
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(textColor)
                    .font(Font.system(size: 0.45 * min(w, h)).monospacedDigit())
                    .frame(width: w, height: h, alignment: .center)
            }
            .padding(b)
        }
    }
    
    var backgroundColor: Color {
        return color.backgroundColor
    }
    
    var textColor: Color {
        return color.textColor
    }
    

    var keyBody: some View {
        switch key {
        case "/":
            return AnyView(Image(systemName: "divide"))
        case "*":
            return AnyView(Image(systemName: "multiply"))
        case "-":
            return AnyView(Image(systemName: "minus"))
        case "+":
            return AnyView(Image(systemName: "plus"))
        case "=":
            return AnyView(Image(systemName: "equal"))
        default:
            return AnyView(Text(key))
        }
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 0) {
        ButtonView(key: "C", color: .lightGray)
        ButtonView(key: "*", color: .orange)
        ButtonView(key: "0", style: .double)
    }
    .preferredColorScheme(.dark)
}


extension ButtonView.ButtonStyle {
    var frameWidth: CGFloat {
        switch self {
        case .simple:
            return 1
        case .double:
            return 2
        }
    }
}

extension ButtonView.ButtonColor {
    var backgroundColor: SwiftUI.Color {
        switch self {
        case .darkGray:
            return Color(.buttonDarkGrey)
        case .lightGray:
            return Color(.buttonLightGrey)
        case .orange:
            return Color(.buttonOrange)
        }
    }
    
    var textColor: SwiftUI.Color {
        switch self {
        case .darkGray:
            return .white
        case .lightGray:
            return .white
        case .orange:
            return .white
        }
    }
}

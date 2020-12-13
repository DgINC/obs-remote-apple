//
//  ButtonsUI.swift
//  obsremote
//
//  Created by Dg on 10.12.2020.
//

import SwiftUI

struct DefaultView: ViewModifier {
    var bgColor: Color
    @Binding var isPressed: Bool

    func body(content: Content) -> some View {
        content
            .padding(20)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .shadow(color: .white, radius: self.isPressed ? 7: 10, x: self.isPressed ? -5: -15, y: self.isPressed ? -5: -15)
                        .shadow(color: .black, radius: self.isPressed ? 7: 10, x: self.isPressed ? 5: 15, y: self.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(bgColor)
                }
            )
            .scaleEffect(self.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
            .animation(.spring())
    }
}

extension View {
    func neumorphic(isPressed: Binding<Bool>, bgColor: Color) -> some View {
        self.modifier(DefaultView(bgColor: bgColor, isPressed: isPressed))
    }
}

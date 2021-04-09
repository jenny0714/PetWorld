//
//  GradientBackgroundStyle.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//

import SwiftUI

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color("Moderate blue"))
            .cornerRadius(40)
            .padding(.vertical, 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

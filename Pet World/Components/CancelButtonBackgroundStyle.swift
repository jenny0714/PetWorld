//
//  CancelButtonBackgroundStyle.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//

import SwiftUI

struct CancelButtonBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(Color("Gray"))
            .background(Color("Light grayish red"))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

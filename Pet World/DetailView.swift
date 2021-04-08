//
//  DetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/7.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack{
            Button(action: {
                print("飼料內容")
            }) {
                Text("飼料")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())
        
            Button(action: {
                print("鮮食內容")
            }) {
                Text("鮮食")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())
        
            Button(action: {
                print("罐頭內容")
            }) {
                Text("罐頭")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())
        }
        .navigationTitle("Food Type")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct GradientBackgroundStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
        }
    }
}
    

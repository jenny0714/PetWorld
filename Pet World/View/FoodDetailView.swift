//
//  DetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/7.
//

import SwiftUI

struct FoodDetailView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        VStack {
            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("飼料")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())

            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("鮮食")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())

            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("罐頭")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action: {
                print("返回回主畫面")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("返回")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(CancelButtonBackgroundStyle())

        }
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
    }
}
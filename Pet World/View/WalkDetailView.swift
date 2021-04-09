//
//  WalkDetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//

import SwiftUI

struct WalkDetailView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        VStack {
            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("漂亮便便")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())

            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("沒有成型便便")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())

            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("血便")
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

struct WalkView_Previews: PreviewProvider {
    static var previews: some View {
        WalkDetailView()
    }
}

//
//  WaterDetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//
import SwiftUI

struct WaterDetailView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var didTap : Bool = false
    var body: some View {
        VStack(alignment: .center) {
            Text("喝的種類")
                .fontWeight(.semibold)
                .font(.title)
                .foregroundColor(Color("Very Dark Gray"))
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing])
        }
        List {
        VStack {
            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("水")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())

            Button(action: {
                print("回主畫面,並新增一筆資料")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("牛奶")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .buttonStyle(GradientBackgroundStyle())
            
        }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
        HStack {
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

struct WaterView_Previews: PreviewProvider {
    static var previews: some View {
        WaterDetailView()
    }
}


//
//  PupuDetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//

import SwiftUI

struct PupuDetailView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        VStack(alignment: .center) {
            Text("便便的種類")
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
            }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
        VStack {
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

struct PupuView_Previews: PreviewProvider {
    static var previews: some View {
        PupuDetailView()
    }
}

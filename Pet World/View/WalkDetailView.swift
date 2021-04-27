//
//  WalkDetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/9.
//

import SwiftUI

struct WalkDetailView: View {
    @State private var pathLength = 1
    @Environment(\.presentationMode) private var presentationMode
    var pathLengthForUI: String {
        return NumberFormatter().string(from: NSNumber(value: Double(pathLength))) ?? "0"
    }
    var body: some View {
        List {
            VStack {
                Button(action: {
                    pathLength += 1
                }
                ) {
                    Text("UP")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .buttonStyle(GradientBackgroundStyle())

                Text("\(pathLengthForUI)" + " " + "KM")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color("Very Dark Gray"))
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("Moderate blue"), lineWidth: 5))

                Button(action: {
                    if pathLength >= 2 {
                        pathLength -= 1
                    }
                }
                ) {
                    Text("DOWN")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .buttonStyle(GradientBackgroundStyle())

                Button(action: {
                    print("回主畫面,並新增一筆資料")
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("送出")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .buttonStyle(GradientBackgroundStyle())
            }
        }
        .padding(EdgeInsets(top: 200, leading: 0, bottom: 5, trailing: 0))
        
        VStack {
            Button(action: {
                print("返回主畫面")
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

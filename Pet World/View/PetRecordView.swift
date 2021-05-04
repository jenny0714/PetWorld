//
//  PetRecordView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/13.
//

import SwiftUI

struct PetRecordView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var name = ""
    
    var body: some View {
        List{
        VStack {
            HStack {
                Image("Dog")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Spacer()
                TextField("寶貝的名字：", text: $name) { editing in
                    print("onEditingChanged", editing)
                } onCommit: {
                    print(name)
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            }
            .padding(.horizontal)
        }
        }
        
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

struct PetRecordView_Previews: PreviewProvider {
    static var previews: some View {
        PetRecordView()
    }
}

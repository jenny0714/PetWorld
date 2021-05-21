//
//  PetRecordView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/13.
//

import SwiftUI

struct PetRecordView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var name: String = "Ex: 咖哩"
    @State private var isNameFieldEditable: Bool = false

    func getButtonIcon() -> String {
        if isNameFieldEditable {
            return "checkmark"
        } else {
            return "pencil"
        }
    }

    func getButtonColor() -> Color {
        if isNameFieldEditable {
            return Color.green
        } else {
            return Color("Very Dark Gray")
        }
    }

    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image("Pet Profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .padding(.bottom, 30)
                Button(action: {
                    
                }) {
                    Image(systemName: "camera")
                        .foregroundColor(Color("Very Dark Gray"))
                        .font(.system(size:30, weight: .medium))
                        .frame(width: 20, height: 20)
                        .padding(.all)
                        .background(Color("Light grayish red"))
                        .clipShape(Circle())
                        .shadow(radius: 30)
                        .offset(x:50, y:-10)
                }
            }
            HStack {
                if isNameFieldEditable {
                    TextField("寶貝的名字：", text: $name) { editing in
                        print("onEditingChanged", editing)
                    } onCommit: {
                        print(name)
                    }
                    .padding(.all)
                    .multilineTextAlignment(.center)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("Moderate blue"), lineWidth: 3))
                    .foregroundColor(Color.black)
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)

                } else {
                    HStack(alignment: .center) {
                        Spacer()
                        Text(name).font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/).foregroundColor(Color.gray)
                        Spacer()
                    }
                    .padding(.all)
                }
                Button(action: {
                    isNameFieldEditable = !isNameFieldEditable
                }) {
                    Image(systemName: getButtonIcon())
                        .foregroundColor(getButtonColor())
                        .imageScale(.medium)
                        .font(.system(size: 35, weight: .bold))
                }
            }
            .padding(.all)
        }

        List {}

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
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}

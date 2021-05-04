//
//  PetRecordView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/13.
//

import SwiftUI

struct PetRecordView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var name: String = "Curry"
    @State private var isNameFieldEditable: Bool = false
    
    func getButtonIcon() -> String{
        if(isNameFieldEditable){
            return "checkmark"
        }else{
            return "pencil"
        }
    }
    
    func getButtonColor() -> Color{
        if(isNameFieldEditable){
            return Color.green
        }else{
            return Color("Very Dark Gray")
        }
    }
    
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center) {
            Image("Pet Profile")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            HStack {
                Spacer()
                if(isNameFieldEditable){
                    TextField("寶貝的名字：", text: $name) { editing in
                        print("onEditingChanged", editing)
                    } onCommit: {
                        print(name)
                    }
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                }else{
                    Text(name)
                }
                Spacer()
                Button(action: {
                    isNameFieldEditable = !isNameFieldEditable
                }) {
                    Image(systemName: getButtonIcon())
                        .foregroundColor(getButtonColor())
                        .imageScale(.medium)
                        .font(.system(size: 35, weight: .bold))
                }
            }
        }
        List{}
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

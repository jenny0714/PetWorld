//
//  PetListView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/12.
//

import SwiftUI

struct PetListView: View {
    @Environment(\.presentationMode) private var presentationMode
    @Binding var showingPetRecord: Bool
    @State private var name = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("家裡狗狗/貓貓 的名字")
                .fontWeight(.semibold)
                .font(.title)
                .foregroundColor(Color("Very Dark Gray"))
                .multilineTextAlignment(.center)
                .padding(.all)
        }
        
        List {
            VStack {
                Button(action: {
                    print("到記錄頁,並新增一筆資料")
                    self.presentationMode.wrappedValue.dismiss()
                    showingPetRecord = true
                }) {
                    HStack{
                        Image("Dog")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        Text("Curry")
                            .padding()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("Very Dark Gray"))
                        Spacer()
                            
                    }
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

struct PetListView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView(showingPetRecord: .constant(false))
    }
}


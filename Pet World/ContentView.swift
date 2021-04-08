//
//  ContentView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/5.
//Image("chicken leg")

import SwiftUI

struct ProgrammingBook : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
}

let _programmingBooks: [ProgrammingBook] = [
    ProgrammingBook(name: "吃飯飯", imageName:"Bowl"),
    ProgrammingBook(name: "喝水水",imageName: "Water"),
    ProgrammingBook(name: "大便便", imageName: "Pupu"),
    ProgrammingBook(name: "散步步", imageName: "Paw")]

struct ContentView: View {
    var programmingBooks: [ProgrammingBook] = _programmingBooks
    var body: some View {
        VStack(alignment: .center){
            HStack{
                VStack{
                    Image("Bowl")
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("吃飯飯")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Moderate blue"))
                        .padding(.all)
                }
                VStack{
                    Image("Water")
                         .resizable()
                         .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                         .scaledToFit()
                         .frame(width: 200, height: 200)
                    Text("喝水水")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Moderate blue"))
                        .padding(.all)
                }
            }
            HStack{
                VStack{
                    Image("Pupu")
                         .resizable()
                         .padding(.all)
                         .scaledToFit()
                         .frame(width: 200, height: 200)
                    Text("大便便")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Moderate blue"))
                        .padding(.all)
                }
                VStack{
                    Image("Paw")
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("散步步")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Moderate blue"))
                        .padding(.all)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView(programmingBooks: _programmingBooks)
    }
}

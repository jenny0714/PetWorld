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
        NavigationView {
            VStack(alignment: .center){
                NavigationLink(destination: DetailView()) {
                    HStack{
                        VStack {
                            Image("Bowl")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text("Food")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color.green)
                        }
//                      VStack{
//                            Button(action: {
//                                print("Jump To Water Page")
//                            }) {
//                                VStack {
//                                    Image("Water")
//                                        .resizable()
//                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                                        .scaledToFit()
//                                        .frame(width: 100, height: 100)
//                                    Text("Water")
//                                        .fontWeight(.semibold)
//                                        .font(.title)
//                                }
//                            }
//                        }
                    }
                }
            HStack{
                VStack{
                    Button(action: {
                        print("Jump To Pupu Page")
                    }) {
                        VStack {
                            Image("Pupu")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text("Pupu")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color.pink)
                        }
                    }
                }
                VStack{
                    Button(action: {
                        print("Jump To Walk Page")
                    }) {
                        VStack {
                            Image("Paw")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            Text("Walk")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color.orange)
                        }
                    }
                }
            .navigationTitle("Pet World")
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

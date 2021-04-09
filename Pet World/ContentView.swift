//
//  ContentView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/5.
// Image("chicken leg")

import SwiftUI
struct ProgrammingBook: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

let _programmingBooks: [ProgrammingBook] = [
    ProgrammingBook(name: "吃飯飯", imageName: "Bowl"),
    ProgrammingBook(name: "喝水水", imageName: "Water"),
    ProgrammingBook(name: "大便便", imageName: "Pupu"),
    ProgrammingBook(name: "散步步", imageName: "Paw"),
]

struct ContentView: View {
    @State private var showingFoodDetail = false
    @State private var showingWaterDetail = false
    @State private var showingPupuDetail = false
    @State private var showingWalkDetail = false

    var programmingBooks: [ProgrammingBook] = _programmingBooks
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button(action: {
                    showingFoodDetail = true
                }) {
                    VStack {
                        Image("Bowl")
                            .resizable()
                            .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Food")
                            .fontWeight(.semibold)
                            .font(.title)
                            .foregroundColor(Color.green)
                            .sheet(isPresented: $showingFoodDetail) {
                                FoodDetailView()
                            }
                    }
                }
                
                Button(action: {
                    showingWaterDetail = true
                }) {
                    VStack {
                        Image("Water")
                            .resizable()
                            .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Water")
                            .fontWeight(.semibold)
                            .font(.title)
                            .sheet(isPresented: $showingWaterDetail) {
                                WaterDetailView()
                            }
                    }
                }
            }
            HStack() {
                Button(action: {
                    showingPupuDetail = true
                }) {
                VStack {
                    Image("Pupu")
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("Pupu")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(Color.pink)
                        .sheet(isPresented: $showingPupuDetail) {
                            PupuDetailView()
                        }
                }
                }
                Button(action: {
                    showingWalkDetail = true
                }) {
                VStack {
                    Image("Paw")
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text("Walk")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(Color.orange)
                        .sheet(isPresented: $showingWalkDetail) {
                            WalkDetailView()
                        }
                }
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

//
//  HomeView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/5.
// Image("chicken leg")

import SQLite3
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

struct HomeView: View {
    @State private var showingFoodDetail = false
    @State private var showingWaterDetail = false
    @State private var showingPupuDetail = false
    @State private var showingWalkDetail = false
    @State private var showingPetList = false
    @State private var showingPetRecord = false

    var programmingBooks: [ProgrammingBook] = _programmingBooks
    var body: some View {
        ZStack {
            VStack(alignment: HorizontalAlignment.leading) {
                HStack {
                    Button(action: {
                        showingPetList = true
                    }) {
                        Image("Menu_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48)
                            .sheet(isPresented: $showingPetList) {
                                PetListView(showingPetRecord: self.$showingPetRecord)
                            }
                    }
                    Spacer()
                }.padding()
                Spacer()
            }

            VStack(alignment: .center) {
                HStack {
                    Button(action: {
                        print("跳轉到詳細頁")
                    }) {
                        Image("Pet Profile")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                    }
                }
              
                HStack {
                    Button(action: {
                        showingFoodDetail = true
                    }) {
                        VStack {
                            Image("DogFood_icon")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Food")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color("Moderate blue"))
                                .sheet(isPresented: $showingFoodDetail) {
                                    FoodDetailView()
                                }
                        }
                    }

                    Button(action: {
                        showingWaterDetail = true
                    }) {
                        VStack {
                            Image("DogDrink_icon")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Water")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color("Moderate blue"))
                                .sheet(isPresented: $showingWaterDetail) {
                                    WaterDetailView()
                                }
                        }
                    }
                }
                HStack {
                    Button(action: {
                        showingPupuDetail = true
                    }) {
                        VStack {
                            Image("DogPupu_icon")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Pupu")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color("Moderate blue"))
                                .sheet(isPresented: $showingPupuDetail) {
                                    PupuDetailView()
                                }
                        }
                    }
                    Button(action: {
                        showingWalkDetail = true
                    }) {
                        VStack {
                            Image("DogWalk_icon")
                                .resizable()
                                .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Text("Walk")
                                .fontWeight(.semibold)
                                .font(.title)
                                .foregroundColor(Color("Moderate blue"))
                                .sheet(isPresented: $showingWalkDetail) {
                                    WalkDetailView()
                                }
                        }
                    }
                }
            }
            
            VStack(alignment: HorizontalAlignment.trailing) {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        showingPetRecord = true
                    }) {
                        Image("info_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .sheet(isPresented: $showingPetRecord) {
                                PetRecordView()
                            }
                    }
                }.padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(programmingBooks: _programmingBooks)
    }
}

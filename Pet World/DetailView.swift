//
//  DetailView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/7.
//

import SwiftUI

struct DetailView: View {
    
    var name: String
    var imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(name)
                .font(.largeTitle)
                .navigationTitle("Detail")
                .navigationBarTitleDisplayMode(.inline)
        }.padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        DetailView(name: "Curry", imageName: "Bowl")
        }
    }
        
}

//
//  SplashView.swift
//  Pet World
//
//  Created by Jenny Lin on 2021/4/12.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack{
            if self.isActive {
                HomeView()
            }else{
                Image("AJ LOGO")
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

//
//  SplashScreen.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 21/11/21.
//

import SwiftUI

struct SplashScreen: View {
   
    @State var isActive: Bool = false
    var body: some View {
        ZStack{
            
            if self.isActive {
                //Home
                HomeScreen()
            } else {
                //Splash Screen
                Color("BG")
                    .ignoresSafeArea()
                
                //logo
                VStack{
                    Image("logo-bcp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                }
            }
            
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  HomeScreen.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 21/11/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var exchangesModelData = ExchangesModelData()
    private var filteredExchange: [Exchange]{
        return exchangesModelData.exchanges.filter {exchange in return exchange.isSelected}
    }
    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    Text("¡Hola!")
                        .padding(10)
                        .foregroundColor(.white)
                    Text("Gustavo")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }.frame(minWidth: 100,
                        maxWidth: .infinity,
                        minHeight: 44, maxHeight: 290)
                    .edgesIgnoringSafeArea(.all)
                        .background(Color("BG"))
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.white)
                        .frame(height: 400)
                    
                    VStack{
                        BodyView(exchange: filteredExchange[0])
                    }.padding()

                }.offset(y: -50.0)
                    .edgesIgnoringSafeArea(.all)
            }
            .background(.white)
            .toolbar {
                HeaderView()
            }
        }.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(false)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

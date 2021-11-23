//
//  BodyView.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 21/11/21.
//

import SwiftUI

struct BodyView: View {
    var exchange: Exchange
    @State private var initSend = ""
    @State private var receive = ""
    @State private var sendNumber = 0
    @State private var showSheetView = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack{
                    Text("Compramos")
                        .font(.footnote)
                        .padding(.vertical, 2.0)
                    Text(String(exchange.purchase))
                        .font(.footnote)
                        .fontWeight(.medium)
                        
                }
                Spacer()
                VStack{}.frame(width:1, height: 30)
                    .background(Color.gray.opacity(0.3))
                Spacer()
                VStack{
                    Text("Vendemos")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                        .padding(.vertical, 2.0)
                    
                    Text(String(exchange.sale))
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                }
                
            }.padding(15)
            
            ZStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Tú envías:")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                        TextField("0.00", text: $initSend)
                            .onChange(of: initSend) { value in
                                var result = 0.0
                                sendNumber =  Int(value) ?? 0
                                result = round((Double(sendNumber)  * Double(exchange.sale)) * 100) / 100.0
                                receive = "\(result)"
                                
                        }
                    }.background(.white)
                        .padding()
                    VStack{
                        Spacer()
                        Text(exchange.moneyType)
                            .font(.footnote)
                            .foregroundColor(Color.white)
                            .padding(.trailing)
                            .frame(width: 80)
                        Spacer()
                    }.background(Color("BG"))
                    
                }.background(Color.white)
                    .padding(.all, 5.0)
                    .cornerRadius(21)
                    .shadow(radius: 1)
                    .frame(height: 90)
                
              
                HStack{
                    VStack(alignment: .leading){
                        Text("Tú recibes:")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                        TextField("0.00", text: $receive)
                    }.background(.white)
                        .padding()
                    VStack{
                        Spacer()
                        Text("PEN")
                            .font(.footnote)
                            .foregroundColor(Color.white)
                            .padding(.trailing)
                            .frame(width: 80)
                        Spacer()
                    }.background(Color("BG"))
                            
                    
                }.background(.white)
                    .padding(.all, 5.0)
                    .cornerRadius(21)
                    .shadow(radius: 1)
                    .frame(height: 90)
                    .offset(y: 90)
                
                Button(action: {
                    self.showSheetView.toggle()
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle")
                        .resizable()
                        .frame(width:40, height: 40)
                        .foregroundColor(Color("BG"))
                        .background(.white)
                        .clipShape(Circle())
                }.offset(x: 135, y: 40)
                    .sheet(isPresented: $showSheetView) {
                        DetailView(showSheetView: self.$showSheetView)
                    }.foregroundColor(.black)
            }
            
            Spacer()
            HStack{
                Text("La manera más económica y segura de cambiar tu dinero")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
            }.padding(3)
            Button(action: {  }) {
                Text("PROCESAR")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }.frame(minWidth: 100,
                    maxWidth: .infinity,
                    minHeight: 44)
                .background(Color("PButton"))
                .padding(5)
                .cornerRadius(20)
                .offset(y:40)
        }
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
        //.environmentObject(ExchangesModelData())
    }
}

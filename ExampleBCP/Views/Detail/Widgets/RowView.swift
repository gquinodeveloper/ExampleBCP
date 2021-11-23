//
//  RowView.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 23/11/21.
//

import SwiftUI

struct RowView: View {
    var exchange: Exchange
    var body: some View {
        HStack{
            exchange.avatar
                .resizable()
                .frame(width: 40, height: 40)
            VStack(
                alignment: .leading
            ){
                Text(exchange.country)
                    .font(.title)
                HStack {
                    Text("1 PEN")
                        .font(.subheadline)
                    .foregroundColor(Color.gray)
                    Text(" = ")
                        .font(.subheadline)
                    .foregroundColor(Color.gray)
                    Text(String(exchange.sale))
                        .font(.subheadline)
                    .foregroundColor(Color.gray)
                   
                    Text(exchange.moneyType)
                        .font(.subheadline)
                    .foregroundColor(Color.gray)
                }
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(exchange: Exchange(
            id: 0,
            avatar: Image("usa"),
            country: "United States",
            moneyType: "USD",
            purchase: 1.0222,
            sale: 1.0965,
            isSelected: true
            )
        ).previewLayout(
            .fixed(
                width: 400,
                height: 60
            )
        )
    }
}

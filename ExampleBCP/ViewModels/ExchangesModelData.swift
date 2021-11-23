//
//  ExchangeModelData.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 22/11/21.
//

import Foundation
import SwiftUI
final class ExchangesModelData: ObservableObject{
    @Published var  exchanges : [Exchange] = [
        Exchange(
            id: 0,
            avatar: Image("usa"),
            country: "United States",
            moneyType: "USD",
            purchase: 4.102,
            sale: 4.187,
            isSelected: true
        ),
        
        Exchange(
            id: 1,
            avatar: Image("japon"),
            country: "Japan",
            moneyType: "JPY",
            purchase: 110.987,
            sale: 118.02,
            isSelected: false
        ),
        
        Exchange(
            id: 2,
            avatar: Image("suiza"),
            country: "Switzerland",
            moneyType: "CHF",
            purchase: 1.0002,
            sale: 1.0856,
            isSelected: false
        ),
        
        Exchange(
            id: 3,
            avatar: Image("canada"),
            country: "Canada",
            moneyType: "CAD",
            purchase: 1.1212,
            sale: 1.4565,
            isSelected: false
        ),
    ]
}


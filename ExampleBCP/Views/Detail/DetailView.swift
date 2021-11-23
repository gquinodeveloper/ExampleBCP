//
//  DetailView.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 22/11/21.
//

import SwiftUI

struct DetailView: View {
    @Binding var showSheetView: Bool
    @StateObject var exchangesModelData = ExchangesModelData()
    
    var body: some View {
        NavigationView {
            VStack {
                List(exchangesModelData.exchanges, id:\.id){ exchange in
                    Button(action: {
                        self.showSheetView = false
                    }) {
                        RowView(exchange: exchange)
                    }
                }
            }
            .navigationTitle("Tipos de cambio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showSheetView: .constant(false))
    }
}

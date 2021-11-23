//
//  HeaderView.swift
//  ExampleBCP
//
//  Created by gustavo Quino Crispin on 21/11/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 140){
            Image(systemName: "line.3.horizontal").foregroundColor(.white)
            Spacer()
            Image("avatar")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

//
//  SecondView.swift
//  This or That
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct SecondView: View {
    @State private var response = ""
    var body: some View {
    
        NavigationStack {
            VStack (spacing: 50.0){
                Text("SRK or Salman Khan")
                    .font(.title2)
                
                    Button {
                        response = "So iconic ✨"
                    } label: {
                        Image("srk")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(30)
                    
                    .padding()
                    Button {
                        response = "Brah he can't dance"
                    } label: {
                        Image("salman_khan")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(30)
                Text(response)
                NavigationLink(destination: ThirdView()) {
                    Text("Next")
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

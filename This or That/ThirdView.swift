//
//  ThirdView.swift
//  This or That
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var response = ""
    var body: some View {
        NavigationStack{
            VStack (spacing:50.0) {
                Text("YJHD or 3 Idiots")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                    Button {
                        response = "You are hopeless romantic"
                    } label: {
                        Image("yjhd")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(30)
                    .padding()
                    
                    Button {
                        response = "So iconic ✨"
                    } label: {
                        Image("3_idiots")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(30)

                }
                Text(response)
                
                NavigationLink(destination: FourthView()) {
                    Text("Next")
                }
            }
            .padding()
        }
    }

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

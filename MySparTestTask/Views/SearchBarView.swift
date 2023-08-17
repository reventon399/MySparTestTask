//
//  SeachView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 10.08.2023.
//

import SwiftUI

struct SearchBarView: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            ZStack {
                TextField("Москва, Москва и Московская область", text: $searchText)
                    .padding(.leading, 40)
                    .padding(.trailing, 5)
                    .frame(height: 40)
                    .background(Color(.white))
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(.trailing, 260)
            }
            
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal")
                    .font(.title)
                    .foregroundColor(.green)
            })
        }
        .padding(.horizontal, 10)
    }
}

struct SeachView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}

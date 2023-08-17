//
//  OffersView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 17.08.2023.
//

import SwiftUI

struct OffersView: View {
    
    var offers = ["Offer1", "Offer2", "Offer3", "Offer4", "Offer5"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyVStack {
                LazyHStack(spacing: -20) {
                    ForEach(offers, id:\.self) { index in
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 130)
                                .foregroundColor(.green)
                                .cornerRadius(15)
                                .padding()
                            Text(index)
                        }
                    }
                }
            }
        }
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersView()
    }
}

//
//  DiscountsView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 10.08.2023.
//

import SwiftUI

struct DiscountsView: View {
    var discounts = ["Discount1", "Discount2", "Discount3", "Discount4", "Discount5"]
    
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: -20) {
                    Rectangle()
                        .frame(width: 20, height: 170)
                        .foregroundColor(.clear)
                        .padding()
                    
                    ForEach(discounts.indices, id: \.self) { index in
                        ZStack {
                            Rectangle()
                                .frame(width: 300, height: 170)
                                .foregroundColor(.green)
                                .cornerRadius(15)
                                .padding()
                                .offset(x: index == 0 ? -10 : index == discounts.count - 1 ? 10 : 0)
                                .zIndex(index == 0 || index == discounts.count - 1 ? 1 : 0)
                            Text(discounts[index])
                        }
                    }
                }
            }
            .onAppear {
                scrollViewProxy.scrollTo(3, anchor: .center)
            }
        }
    }
}

struct DiscountsView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountsView()
    }
}

//
//  CollectionView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 17.08.2023.
//

import SwiftUI

struct CollectionView: View {
    let sectionData: [(sectionTitle: String, items: [String])] = [
        ("Рекомендации", ["Элемент 1", "Элемент 2", "Элемент 3"]),
        ("Сладкое настроение", ["Элемент 1", "Элемент 2", "Элемент 3"]),
        ("Вкусы лета", ["Элемент 1", "Элемент 2", "Элемент 3"])
    ]
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(sectionData, id: \.sectionTitle) { section in
                    Section(header:
                                HStack {
                        Text(section.sectionTitle)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 10) {
                                ForEach(section.items, id: \.self) { item in
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 120, height: 150)
                                            .foregroundColor(.green)
                                            .cornerRadius(10)
                                            .shadow(color: .gray, radius: 5)
                                            .padding(5)
                                        Text(item)
                                            .foregroundColor(.black)
                                            .font(.caption)
                                            .multilineTextAlignment(.center)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}

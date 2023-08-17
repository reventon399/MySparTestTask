//
//  MainView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 15.08.2023.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    SearchBarView()
                }
                StoriesView()
                    .padding(.top, 10)
                DiscountsView()
                    .padding(.top, -10)
                BonusView()
                    .padding(.top, -20)
                OffersView()
                    .padding(.top, -20)
                CollectionView()
                    .padding(.top, -20)
            }
            
            .padding()
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}





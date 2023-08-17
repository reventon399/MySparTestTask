//
//  ContentView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 10.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Главная", systemImage: "heart")
                }
            
            CatalogView()
                .tabItem {
                    Label("Каталог", systemImage: "square.grid.2x2")
                }
            
            BinView()
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

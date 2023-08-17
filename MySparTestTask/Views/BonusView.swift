//
//  BonusView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 15.08.2023.
//

import SwiftUI

struct BonusView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 330, height: 100)
                .foregroundColor(.green)
                .cornerRadius(15)
                .padding()
            Text("text")
        }
    }
}

struct BonusView_Previews: PreviewProvider {
    static var previews: some View {
        BonusView()
    }
}

//
//  StoriesView.swift
//  MySparTestTask
//
//  Created by Алексей Лосев on 15.08.2023.
//

import SwiftUI

struct Story: Identifiable {
    let id = UUID()
    let imageName: String
    let caption: String
}

struct StoriesView: View {
    let stories: [Story] = [
        Story(imageName: "story1", caption: "Мой SPAR"),
        Story(imageName: "story2", caption: "Мы в соцсетях"),
        Story(imageName: "story3", caption: "Klern"),
        Story(imageName: "story4", caption: "Новинки недели"),
        Story(imageName: "story5", caption: "Рецепт недели"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(stories) { story in
                    VStack {
                        Image(story.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.green, lineWidth: 2)
                            )
                        
                        Text(story.caption)
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(10)
            .frame(maxWidth: .infinity)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}

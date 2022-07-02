//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Dream")
                .font(.headline)
            Text("Follow your dream")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(24))
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Repost post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}

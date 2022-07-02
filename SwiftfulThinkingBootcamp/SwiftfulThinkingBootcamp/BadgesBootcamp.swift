//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    
    var body: some View {
        
//        TabView {
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("new")
//        }
        
        List {
            Text("Hello")
                .badge("new items")
            Text("Hello")
            Text("Hello")
            Text("Hello")
                .badge(2)
            Text("Hello")
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}

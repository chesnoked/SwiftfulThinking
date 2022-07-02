//
//  ExtractSubViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            Color("myColor1").ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct ExtractSubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

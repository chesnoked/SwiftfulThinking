//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    })
                    
                }
            }
        }
        
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        })
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}

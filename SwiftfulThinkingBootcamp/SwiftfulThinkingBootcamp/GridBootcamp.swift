//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.red)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(5)
                        .background(Color.black)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(5)
                        .background(Color.black)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                                
                        }
                    }
                    
                })
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
        
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}

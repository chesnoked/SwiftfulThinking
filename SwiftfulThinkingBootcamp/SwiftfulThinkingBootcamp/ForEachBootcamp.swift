//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
        
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
//
//            }
//        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}

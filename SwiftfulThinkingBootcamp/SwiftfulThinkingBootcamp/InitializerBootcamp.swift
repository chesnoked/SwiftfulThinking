//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 100, fruit: .apple)
            InitializerBootcamp(count: 30, fruit: .orange)
        }
    }
}

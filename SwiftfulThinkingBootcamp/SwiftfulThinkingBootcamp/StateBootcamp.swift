//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}

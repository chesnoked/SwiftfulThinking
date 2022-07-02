//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
            
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}

//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.purple
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.gray
    @Binding var title: String
    
    var body: some View {
        
        Button(action: {
            backgroundColor = .pink
            buttonColor = .black
            title = "New Title".uppercased()
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
                .shadow(radius: 10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

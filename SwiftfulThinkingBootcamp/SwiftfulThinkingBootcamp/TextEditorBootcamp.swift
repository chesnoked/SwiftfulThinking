//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var saveText: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    //.background(Color.red)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                
                Button(action: {
                    saveText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(saveText)
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}

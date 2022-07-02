//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.pink)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}

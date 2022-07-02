//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Something to the console!")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.next)
            .onSubmit {
                print("Something to the console!")
            }
        
        TextField("Placeholder...", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Something to the console!")
            }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}

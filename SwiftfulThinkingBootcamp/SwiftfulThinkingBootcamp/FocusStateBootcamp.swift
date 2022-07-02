//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
    //@FocusState private var usernameInFocus: Bool
    
    @State private var password: String = ""
    //@FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            TextField("Add your name here...", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀", action: {
                
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            })
            
//            Button("toggle focus state".uppercased(), action: {
//                usernameInFocus.toggle()
//            })
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
//                usernameInFocus = true
//            })
//        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}

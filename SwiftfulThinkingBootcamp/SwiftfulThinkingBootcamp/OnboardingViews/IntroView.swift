//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 01.07.2022.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        
        ZStack {
            
            // background
            RadialGradient(
                gradient: Gradient(colors: [Color.pink, Color.purple]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .top)))
            }
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 26.06.2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("button".uppercased()) {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    //.transition(.move(edge: .leading))
                    //.transition(.opacity)
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        //removal: .move(edge: .bottom)))
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    //.opacity(showView ? 1.0 : 0.0)
                    .animation(.easeInOut)
            }
            
        }
        //.ignoresSafeArea()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}

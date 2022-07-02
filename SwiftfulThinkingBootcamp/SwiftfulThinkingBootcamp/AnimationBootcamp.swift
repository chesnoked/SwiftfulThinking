//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                
                
                withAnimation(
                    .default
                    //.delay(1.0)
                    .repeatForever(autoreverses: true)
                    //.repeatCount(5, autoreverses: false)
                ) {
                            isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
//                .animation(Animation
//                    .default
//                    .repeatForever(autoreverses: true)
                
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}

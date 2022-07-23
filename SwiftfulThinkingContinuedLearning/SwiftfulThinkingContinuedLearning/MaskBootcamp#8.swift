//
//  MaskBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 15.07.2022.
//

import SwiftUI

struct MaskBootcamp_8: View {
    
    @State var rating: Int = 3
    
    var body: some View {
        ZStack {
            Color.black
            starsView
                .overlay(
                    overlayView
                        .mask(starsView)
                )
        }
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    //.foregroundColor(.yellow)
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [Color.purple, Color.pink]),
                        startPoint: .leading,
                        endPoint: .trailing))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(false)
    }
    
    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color.gray)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            rating = index
                        }
                    }
            }
        }
    }
}

struct MaskBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MaskBootcamp_8()
    }
}

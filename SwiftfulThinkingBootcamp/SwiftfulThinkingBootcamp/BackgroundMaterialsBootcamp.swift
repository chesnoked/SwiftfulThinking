//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(Color.black.opacity(0.5))
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("dragon")
                //.resizable()
                //.scaledToFill()
                //.ignoresSafeArea(edges: .top)
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}

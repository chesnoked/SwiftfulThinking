//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(
                "Select a color",
                selection: $backgroundColor,
                supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}

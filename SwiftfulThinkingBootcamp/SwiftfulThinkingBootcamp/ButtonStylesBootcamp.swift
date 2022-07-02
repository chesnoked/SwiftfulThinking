//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    
    var body: some View {
        
        VStack {
            
            Button(
                action: {
                    //
                },
                label: {
                    Text("Button Title")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            Button("Button title") {
                //
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button title") {
                //
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            //.buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button title") {
                //
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button title") {
                //
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
            .preferredColorScheme(.dark)
    }
}

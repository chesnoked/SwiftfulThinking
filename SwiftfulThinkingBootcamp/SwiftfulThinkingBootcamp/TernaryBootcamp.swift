//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Text(isStartingState ? "starting state".uppercased() : "ending state")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
            
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}

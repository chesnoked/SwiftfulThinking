//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 27.06.2022.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}

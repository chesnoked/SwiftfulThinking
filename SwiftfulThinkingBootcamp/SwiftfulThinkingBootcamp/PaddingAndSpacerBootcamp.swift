//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("This is the description of want we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                //.multilineTextAlignment(.center)
                //.background(Color.yellow)
        }
        //.background(Color.green)
        .padding()
        .background(
            Color.white
                .cornerRadius(15)
                .shadow(
                    color: .green.opacity(0.3),
                    radius: 10,
                    x: 0, y: 10)
        )
        //.background(Color.red)
        //.padding(.horizontal, 30)
        //.background(Color.gray)
        //            .font(.largeTitle)
        //            .fontWeight(.semibold)
        //            .frame(maxWidth: .infinity, alignment: .leading)
        //            .background(Color.red)
        //            .padding(.leading, 20)
        
        //            .background(Color.yellow)
        //            //.padding()
        //            .padding(.all, 10)
        //            .background(Color.blue)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}

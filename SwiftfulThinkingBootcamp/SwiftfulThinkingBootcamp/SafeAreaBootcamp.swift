//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 25.06.2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(Color.yellow)
        
        //        ZStack {
        //
        //            Color.green
        //                .edgesIgnoringSafeArea(.all)
        //.ignoresSafeArea(edges: .top)
        //
        //            Rectangle()
        //                .fill(Color.yellow)
        //
        //            VStack {
        //                Text("Hello, World!")
        //                Spacer()
        //            }
        //        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}

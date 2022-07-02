//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 24.06.2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                
                Image(systemName: "xmark")
                
                Spacer()
//                    .frame(height: 10)
//                    .background(Color.black)
                
                Image(systemName: "gear")
                
                
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.red)
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.green)
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
            }
            
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.black)
            
            Spacer()
//                .frame(width: 10)
//                .background(Color.black)
            
            Rectangle()
                .frame(height: 55)
        }
        .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}

//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 23.06.2022.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
        //        VStack(alignment: .center, spacing: 0, content:
        //                {
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.orange)
        //                .frame(width: 100, height: 100)
        //        })
        
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}

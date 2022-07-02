//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        //AsyncImage(url: url)
        
//        AsyncImage(
//            url: url) { returnedImage in
//                returnedImage
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(15)
//            } placeholder: {
//                ProgressView()
//            }
        
        ZStack {
            
            Color.black
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(15)
                        .shadow(color: .white, radius: 55, x: 0, y: 0)
                case .failure(let _):
                    Image(systemName: "questionmark")
                    //Text("\(error)")
                        .font(.headline)
                    
                }
            }
        }
        
        

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}

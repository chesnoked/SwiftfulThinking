//
//  TypealiasBootcamp#19.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 23.07.2022.
//

import SwiftUI

struct MovieModel {
    let title: String
    let director: String
    let count: Int
}

typealias TVModel = MovieModel

//struct TVModel {
//    let title: String
//    let director: String
//    let count: Int
//}

struct TypealiasBootcamp_19: View {
    
    //@State var item: MovieModel = MovieModel(title: "Title", director: "Joe", count: 5)
    @State var item: TVModel = TVModel(title: "TV Title", director: "Emily", count: 10)
    
    var body: some View {
        
        VStack {
            Text("\(item.title)")
            Text("\(item.director)")
            Text("\(item.count)")
        }
    }
}

struct TypealiasBootcamp_19_Previews: PreviewProvider {
    static var previews: some View {
        TypealiasBootcamp_19()
    }
}

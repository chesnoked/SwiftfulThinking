//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Evgeniy Safin on 02.07.2022.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        
        List {
            
//            ForEach(fruits, id: \.self) { fruit in
//                Text(fruit.capitalized)
//            }
            
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        
                        edge: .trailing,
                        allowsFullSwipe: true,
                        content: {
                            Button("Archive", action: {
                                //
                            })
                            .tint(.green)
                            
                            Button("Save", action: {
                                //
                            })
                            .tint(.blue)
                            
                            Button("Junk", action: {
                                //
                            })
                            .tint(.black)
                        })
                
                    .swipeActions(
                        
                        edge: .leading,
                        allowsFullSwipe: false,
                        content: {
                            Button("Share", action: {
                                //
                            })
                            .tint(.yellow)
                        })
            }
            
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        //
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}

//
//  ItemModel.swift
//  ToDoList
//
//  Created by Evgeniy Safin on 03.07.2022.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable {
    
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}

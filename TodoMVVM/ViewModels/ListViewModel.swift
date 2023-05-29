//
//  ListViewModel.swift
//  TodoMVVM
//
//  Created by Саид-Насир Исмаилов on 2023/05/29.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First", isCompleted: false),
            ItemModel(title: "Second", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

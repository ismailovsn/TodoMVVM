//
//  ItemModel.swift
//  TodoMVVM
//
//  Created by Саид-Насир Исмаилов on 2023/05/29.
//

import Foundation

struct ItemModel: Identifiable {
    let id:String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

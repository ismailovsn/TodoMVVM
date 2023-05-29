//
//  TodoMVVMApp.swift
//  TodoMVVM
//
//  Created by Саид-Насир Исмаилов on 2023/05/28.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 
 */

@main
struct TodoMVVMApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}


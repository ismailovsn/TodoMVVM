//
//  AddView.swift
//  TodoMVVM
//
//  Created by Саид-Насир Исмаилов on 2023/05/29.
//

import SwiftUI

struct AddView: View {
    @State private var textFieldText: String = ""
    
    var body: some View {
//        ScrollView {
            Form {
                TextField("Type something here...", text: $textFieldText)
                
                Button {
                    
                } label: {
                    Text("Save")
                }

//            }
                
        }
        .navigationTitle("Add an Item ✏️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}

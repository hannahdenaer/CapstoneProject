//
//  NewAlreadyRead.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI

struct NewAlreadyRead: View {
    @Binding var newAlreadyRead: Bool
    @Bindable var alreadyReadItem: AlreadyReadItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("New Book Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the book title...", text: $alreadyReadItem.title)
                .padding ()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding ()
            
            Button("Save") {
                addHaveReads ()
                newAlreadyRead = false
            }
        }
    }
    func addHaveReads() {
        let haveReads = AlreadyReadItem(title: alreadyReadItem.title)
        modelContext.insert(haveReads)
    }
}

#Preview {
    NewAlreadyRead(newAlreadyRead: .constant(false), alreadyReadItem: AlreadyReadItem(title: ""))
}

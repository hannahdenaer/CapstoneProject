//
//  NewWantToRead.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI
import SwiftData

struct NewWantToRead: View {
    @Binding var newWantToRead: Bool
    @Bindable var wantToReadItem: WantToReadItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("New Book Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter book title...", text: $wantToReadItem.title)
                .padding ()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding ()
            
            Button("Save") {
                addToRead()
                newWantToRead = false
            }


        }
    }
    func addToRead() {
        let toRead = WantToReadItem(title: wantToReadItem.title)
        modelContext.insert(toRead)
    }
}

#Preview {
    NewWantToRead(newWantToRead: .constant (false), wantToReadItem: WantToReadItem(title: ""))
}

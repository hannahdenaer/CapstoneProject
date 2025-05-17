//
//  AlreadyRead.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI
import SwiftData

struct AlreadyRead: View {
    @State private var newAlreadyRead = false
    @Query var haveReads: [AlreadyReadItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {
                Text ("Already Read List:")
                Spacer ()
                Button("+") {
                    withAnimation {
                        newAlreadyRead = true
                    }
                }
            }
            .padding ()
            Spacer ()
            List {
                ForEach(haveReads) { AlreadyReadItem in
                    Text(AlreadyReadItem.title)
                }
                .onDelete(perform: deleteHaveReads)
            }
        }
        if newAlreadyRead {
            NewAlreadyRead(newAlreadyRead: $newAlreadyRead, alreadyReadItem: AlreadyReadItem(title: ""))
        }
    }
    func deleteHaveReads(at offsets: IndexSet) {
        for offset in offsets {
            let alreadyReadItem = haveReads[offset]
            modelContext.delete(alreadyReadItem)
        }
    }
}

#Preview {
    AlreadyRead()
        .modelContainer(for: AlreadyReadItem.self, inMemory: true)
}

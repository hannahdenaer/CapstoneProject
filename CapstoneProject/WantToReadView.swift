//
//  WantToReadView.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI
import SwiftData

struct WantToReadView: View {
    @State private var newWantToRead = false
    @Query var toReads: [WantToReadItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {
                Text ("Want to Read List:")
                Spacer ()
                Button("+") {
                    withAnimation {
                        newWantToRead = true
                    }
                }
                
            }
            .padding ()
            Spacer ()
            List {
                ForEach (toReads) { WantToReadItem in
                    Text(WantToReadItem.title)
                }
                .onDelete(perform: deleteToReads)
            }
        }
            if newWantToRead {
                NewWantToRead (newWantToRead: $newWantToRead, wantToReadItem: WantToReadItem(title: ""))
        }
    }
    func deleteToReads (at offsets :IndexSet) {
        for offset in offsets {
            let wantToReadItem = toReads [offset]
            modelContext.delete(wantToReadItem)
        }
    }
}

#Preview {
        WantToReadView ()
        .modelContainer(for: WantToReadItem.self, inMemory: true)
}

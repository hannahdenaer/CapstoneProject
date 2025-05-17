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
            }
        }
        if newAlreadyRead {
            NewAlreadyRead(newAlreadyRead: $newAlreadyRead, alreadyReadItem: AlreadyReadItem(title: ""))
        }
    }
}

#Preview {
    AlreadyRead()
        .modelContainer(for: AlreadyReadItem.self, inMemory: true)
}

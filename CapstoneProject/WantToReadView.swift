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
            }
        }
            if newWantToRead {
            NewWantToRead ()
        }
    }
}

#Preview {
                WantToReadView ()
}

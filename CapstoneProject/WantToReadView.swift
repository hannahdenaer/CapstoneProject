//
//  WantToReadView.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI

struct WantToReadView: View {
    @State private var newWantToRead = false
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
        }
        if newWantToRead {
            NewWantToRead()
        }
    }
}

#Preview {
    WantToReadView()
}

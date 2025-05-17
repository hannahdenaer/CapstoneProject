//
//  AlreadyRead.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI

struct AlreadyRead: View {
    @State private var newAlreadyRead = false
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
        }
        Spacer ()
        if newAlreadyRead {
            NewAlreadyRead()
        }
    }
}

#Preview {
    AlreadyRead()
}

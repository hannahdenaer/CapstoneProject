//
//  NewAlreadyRead.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI

struct NewAlreadyRead: View {
    var body: some View {
        VStack {
            Text("New Book Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the book title...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding ()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding ()
            
            Button("Save") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    }
}

#Preview {
    NewAlreadyRead()
}

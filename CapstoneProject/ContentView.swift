//
//  ContentView.swift
//  CapstoneProject
//
//  Created by Scholar on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewBook = false
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            NavigationStack {
                VStack (spacing: 25) {
                    Text ("bookworm📚")
                        .font(.title)
                        .fontWeight(.bold)
                        .italic()

                    
                    NavigationLink(destination: WantToReadView()) {
                        Text("Want to read!")
            }
                    NavigationLink(destination: AlreadyRead ()) {
                            Text("Already read!")
                        }
                }
        }
            .padding()
        }
    }
}
    #Preview {
        ContentView()
    }

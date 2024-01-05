//
//  SearchView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 05/01/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12, content: {
                    ForEach(1...10, id: \.self) { user in
                        
                        HStack {
                            Image("BadassRabit")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading, content: {
                                Text("BadassRabit")
                                    .fontWeight(.semibold)
                                
                                Text("Alex Rabit")
                            })
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                })
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}

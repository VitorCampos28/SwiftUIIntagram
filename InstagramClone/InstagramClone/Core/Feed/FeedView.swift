//
//  FeedView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 05/01/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView() {
                LazyVStack(spacing: 32, content: {
                    ForEach(1...10, id: \.self) { post in
                        FeedCell()
                    }
                })
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 120, height: 100)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

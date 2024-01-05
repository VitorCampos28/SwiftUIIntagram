//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Vitor Campos on 05/01/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(content: {
            // image - user name
            HStack(content: {
                Image("BadassRabit")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                
                Text("RabitRider")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            })
            .padding(.leading, 8)
            //post image
            Image("motorcicle")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
        
            //action buttons
            HStack(spacing: 16, content: {
                Button(action: {
                    print("Like post")
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                Button(action: {
                    print("Comment post")
                }, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                Button(action: {
                    print("Share post")
                }, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                
                Spacer()
            })
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            //likes label
            
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            // caption label
            HStack {
                Text("BadassRabit ")
                    .fontWeight(.semibold) + Text("This is some test caption for now")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            
            Text("6h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
        })
    }
}

#Preview {
    FeedCell()
}

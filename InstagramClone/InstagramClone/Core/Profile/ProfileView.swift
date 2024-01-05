//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Vitor Campos on 05/01/24.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [.init(.flexible(), spacing: 1), .init(.flexible(), spacing: 1), .init(.flexible(), spacing: 1) ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(content: {
                    //Header
                    VStack(spacing: 10, content: {
                        // pic and status
                        HStack(content: {
                            Image("BadassRabit")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 18) {
                                UserStartView(value: 3, title: "Posts")
                                
                                UserStartView(value: 3, title: "Followers")
                                
                                UserStartView(value: 3, title: "following")
                            }
                            
                        })
                        .padding(.horizontal)
                        
                        //name and bio
                        VStack(alignment: .leading, spacing: 4, content: {
                            Text("Chadwick Bozeman")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Wakanda Forever")
                                .font(.footnote)
                        })
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        Button(action: {}, label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 369, height: 32)
                                .foregroundStyle(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                        })
                    })
                    
                    // post grid view
                    
                    LazyVGrid(columns: gridItems, spacing: 1, content: {
                        ForEach(0 ... 15, id: \.self) { index in
                            Image("newHarley")
                                .resizable()
                                .scaledToFill()
                        }
                    })
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    })
                }
            })
        }
    }
}

#Preview {
    ProfileView()
}

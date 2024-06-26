//
//  PostView.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import SwiftUI

struct PostView: View {
    
    @ObservedObject var viewModel: PostViewModel
    @State private var isLiked = false
    @State private var likesCount = 0
    
    var body: some View {
        List {
            ForEach(viewModel.posts) { post in
                VStack {
                    HStack(alignment: .top) {
                        Image(post.profileImage)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 50, maxWidth: 50, minHeight: 50, maxHeight: 50)
                            .cornerRadius(100)
                        
                        VStack(alignment: .leading) {
                            Text(post.username)
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .bold()
                            
                            Text(post.location)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }
                        .padding(.top, 3)
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for the button
                        }) {
                            Image("dots")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 15)
                                .padding(.top, 5)
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 5)
                    
                    ZStack(alignment: .topLeading){
                        Image(post.postImage)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding(.trailing, 15)
                            .padding(.leading, 15)
                    }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        HStack(spacing: 20) {
                            Button(action: {
                                isLiked.toggle()
                                likesCount += isLiked ? 1 : -1
                            }) {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                    .resizable()
                                    .foregroundColor(isLiked ? .red : .black)
                                    .frame(width: 25, height: 25)
                            }
                            
                            Button(action: {
                                print("comment button tapped")
                            }) {
                                Image(systemName: "ellipsis.bubble")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .frame(width: 25, height: 25)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 18)
                        
                        Text("\(likesCount) others")
                            .font(.system(size: 16))
                            .bold()
                            .padding(.leading, 18)
                            .padding(.top, 10)
                        
                        HStack {
                            Text(post.username)
                                .font(.system(size: 16))
                                .bold()
                                .padding(.leading, 18)
                                .padding(.top, 5)
                            
                            Text(post.caption)
                                .font(.system(size: 16))
                                .padding(.top, 5)
                        }
                        
                        Text("View comments")
                            .font(.system(size: 16))
                            .padding(.leading, 18)
                            .padding(.top, 5)
                        HStack {
                            Text(post.commentUser)
                                .font(.system(size: 16))
                                .bold()
                                .padding(.leading, 18)
                                .padding(.top, 5)
                            
                            Text(post.commentText)
                                .font(.system(size: 16))
                                .padding(.top, 5)
                        }
                        
    
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.trailing, 10)
                }
                
                
            }
        }
        
        .navigationBarTitle("Post Detail")
    }
}

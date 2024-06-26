//
//  PostViewModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    
    func addPost(username: String, caption: String, location: String, postImage: String, profileImage: String, initialLikes: Int, commentUser:String, commentText: String) {
        let newPost = PostModel(username: username, caption: caption, location: location, postImage: postImage, profileImage: profileImage, initialLikes: initialLikes, commentUser: commentUser, commentText: commentText)
        posts.append(newPost)
    }
}

//
//  PostViewModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    
    func addPost(name: String, image: String) {
        let newPost = PostModel(name: name, image: image)
        posts.append(newPost)
    }
}

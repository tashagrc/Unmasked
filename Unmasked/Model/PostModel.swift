//
//  PostModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    let username: String
    let caption: String
    let location: String
    let postImage: String
    let profileImage: String
    let initialLikes: Int
    let commentUser: String
    let commentText: String
}

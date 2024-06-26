//
//  PostModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID() // Conforms to Identifiable
    var name: String
    var image: String
}

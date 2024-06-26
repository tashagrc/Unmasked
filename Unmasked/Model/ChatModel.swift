//
//  ChatModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

struct ChatModel: Identifiable {
    let id = UUID() // Conforms to Identifiable
    var name: String
    var message: String
}

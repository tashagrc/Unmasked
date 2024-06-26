//
//  ChatViewModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var chats: [ChatModel] = []
    
    func addChat(name: String, message: String) {
        let newChat = ChatModel(name: name, message: message)
        chats.append(newChat)
    }
}


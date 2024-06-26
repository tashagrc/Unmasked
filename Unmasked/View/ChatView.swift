//
//  ChatView.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var viewModel: ChatViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.chats) { chat in
                VStack(alignment: .leading) {
                    Text(chat.name)
                        .font(.headline)
                    Text(chat.message)
                        .font(.subheadline)
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Chats")
    }
}



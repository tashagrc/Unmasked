//
//  DMsView.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import SwiftUI

struct DMsView: View {
    @ObservedObject var viewModel_2: ChatViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel_2.chats) { chat in
                        VStack(alignment: .leading) {
                            Text(chat.name)
                                .font(.headline)
                            Text(chat.message)
                                .font(.subheadline)
                        }
                    }
                }
                
                Button(action: {
                    viewModel_2.addChat(name: "natalie", message: "hello how r u")
                }, label: {
                    Text("Button")
                })
                
                }
                .listStyle(.grouped)
                .scrollContentBackground(.hidden)
                .navigationBarTitle("Beautyjasmine", displayMode: .large)
                .onAppear {
                    // viewModel.loadJSONData()
                }
            }
        }
}

#Preview {
    DMsView(viewModel_2: ChatViewModel())
}

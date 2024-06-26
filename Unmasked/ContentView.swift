//
//  ContentView.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import SwiftUI

struct ContentView: View {
    enum AppFlow {
        case flow1
        case flow2
        case flow3
    }
    
    @StateObject private var page1ViewModel = ChatViewModel()
    @StateObject private var page2ViewModel = PostViewModel()
    
    @State private var currentFlow: AppFlow = .flow1
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Switch to next flow") {
                    switch currentFlow {
                    case .flow1:
                        currentFlow = .flow2
                    case .flow2:
                        currentFlow = .flow3
                    case .flow3:
                        currentFlow = .flow1
                    }
                    handleFlowChange()
                }
                .padding()
                
                NavigationLink(destination: PostView(viewModel: page2ViewModel)) {
                    Text("Go to post")
                        .font(.headline)
                }
                .padding()
                
                NavigationLink(destination: ChatView(viewModel: page1ViewModel)) {
                    Text("Go to chat")
                        .font(.headline)
                }
                .padding()
            }
            .navigationTitle("App Flow Example")
        }
    }
    
    private func handleFlowChange() {
        switch currentFlow {
        case .flow1:
            page1ViewModel.addChat(name: "User 1 in Flow 1", message: "Message for Flow 1")
            page2ViewModel.addPost(name: "Jasmine", image: "icon")
        case .flow2:
            page1ViewModel.addChat(name: "User 2 in Flow 2", message: "Message for Flow 2")
        case .flow3:
            page1ViewModel.addChat(name: "User 3 in Flow 3", message: "Message for Flow 3")
        }
    }
}

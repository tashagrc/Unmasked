//
//  PostView.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import SwiftUI

struct PostView: View {
    @ObservedObject var viewModel: PostViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.posts) { post in
                HStack {
                    Image(systemName: post.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 10)
                    Text(post.name)
                        .font(.headline)
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Posts")
    }
}



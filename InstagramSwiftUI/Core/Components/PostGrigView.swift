//
//  PostGrigView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 27.07.23.
//

import SwiftUI

struct PostGrigView: View {
    var posts: [Post]
    private let imageDimension = (UIScreen.main.bounds.width / 3) - 1

    private let gridItems:[GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
            ForEach(posts) { post in
                Image(post.imageURL)
                    .resizable()
                    .frame(width: imageDimension, height: imageDimension)
                    .scaledToFill()
                    .clipped()
                    
            }
        }
    }
}

struct PostGrigView_Previews: PreviewProvider {
    static var previews: some View {
        PostGrigView(posts: Post.MOC_POSTS)
    }
}

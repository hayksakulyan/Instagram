//
//  CurrentUserProfileView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 17.07.23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    var posts: [Post] {
        return Post.MOC_POSTS.filter({$0.user?.username == user.username})
    }
    var body: some View {
        
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                // post grid view
                PostGrigView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}

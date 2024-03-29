//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 10.07.23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOC_POSTS.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
//        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                // post grid view
              PostGrigView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
//        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}

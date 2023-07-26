//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 10.07.23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems:[GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
//        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pic and states
                    HStack {
                        Image(user.profaleImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {

                            UserStackView(value: 3, title: "Posts", frameWidth: 78)
                            UserStackView(value: 3, title: "Followers", frameWidth: 78)
                            UserStackView(value: 3, title: "Following", frameWidth: 78)
    //
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 155, height: 32)
                                .foregroundColor(.black)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                    }
                        Button {
                            //
                        } label: {
                            Text("Share Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 155, height: 32)
                                .foregroundColor(.black)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                    }
                        Button {
                            //
                        } label: {
                            Image(systemName: "person.badge.plus")
                                .foregroundColor(.black)
                                .frame(width: 32, height: 32)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                        }
                    }
                    Divider()
                }
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...10, id: \.self) { index in
                        Image("icon")
                            .resizable()
                            .scaledToFill()
                    }
                }
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

//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 10.07.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack(spacing: 10) {
                // pic and states
                HStack {
                    Image("icon")
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
                    Text("Hayk Sakulyan")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Hello Everyone")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // action button
                
                Button {
                    //
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        }
                }

                
                Divider()
            }
            // post grid view
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

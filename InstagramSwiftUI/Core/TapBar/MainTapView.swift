//
//  MainTapView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 10.07.23.
//

import SwiftUI

struct CustomText: View {
    var tabItemText: String
    var imageName: String
    var body: some View {
        Text(tabItemText)
            .tabItem {
                Image(systemName: imageName)
            }
    }
}

struct MainTapView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            CurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}

//
//  MainTapView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 10.07.23.
//

import SwiftUI

struct MainTapView: View {
    @State private var selectedIndex = 0
    
    // partadir petqa tag dnenq vor ashxati bindingy
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            UploadpostView(tabIndex: $selectedIndex)
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }.tag(2)
            Text("Notifications")
                .onAppear {
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }.tag(3)
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}

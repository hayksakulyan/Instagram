//
//  Post.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 26.07.23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUId: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOC_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "Wakanda Forever",
            likes: 104,
            imageURL: "batman_1",
            timeStamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "Wakanda Forever",
            likes: 104,
            imageURL: "batman_1",
            timeStamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "Iron Man",
            likes: 203,
            imageURL: "Ironman_1",
            timeStamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "Wenom is hungry Time to eat",
            likes: 142,
            imageURL: "spiderman_1",
            timeStamp: Date(),
            user: User.MOCK_USERS[2]
        ),
    ]
}

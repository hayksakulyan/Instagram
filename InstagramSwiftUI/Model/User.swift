//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 17.07.23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profaleImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profaleImageUrl: "batman_2", fullname: nil, bio: "bat bio", email: "batman@mail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profaleImageUrl: "spiderman_2", fullname: "spid spiderman", bio: "spid bio", email: "spiderman@mail.com"),
        .init(id: NSUUID().uuidString, username: "aironman", profaleImageUrl: "aironman_2", fullname: "air aironman", bio: "air bio", email: "spiderman@mail.com"),
    ]
}

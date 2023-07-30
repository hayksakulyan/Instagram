//
//  AuthService.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 30.07.23.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    func createUser(email: String, password: String, username: String) async throws {
        
    }
    
    func loadYserData() async throws {
        
    }
    func sugnout() {
        
    }
}

//
//  ContentViewModel.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 30.07.23.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancelables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancelables)
        
        service.$currentUser.sink { [weak self] userSession in
            self?.currentUser = userSession
        }
        .store(in: &cancelables)
    }
}

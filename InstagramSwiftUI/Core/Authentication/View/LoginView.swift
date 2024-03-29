//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 12.07.23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                
                // logo image
                Image("insta")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                // Text field
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                    // this is our custom modifier
                        .modifier(IGTextFieldModifier())
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(IGTextFieldModifier())
                    
                    Button {
                        //
                    } label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.horizontal, 24)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    Button {
                        Task{
                            try await viewModel.signIn()
                        }
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 24)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                        
                    }
                    .padding(.vertical)
                    
                    HStack {
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        Text("OK")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        
                    }
                    .foregroundColor(.gray)
                    
                    HStack {
                        Image("facebook")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Continue with Facebook")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemBlue))
                    }
                    .padding(.top, 8)
                    Spacer()
                    Divider()
                    NavigationLink {
                        AddEmailView()
                            .navigationBarBackButtonHidden(true)
                        
                    } label: {
                        HStack {
                            Text("Don't have an account")
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical, 16)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  UploadpostView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 27.07.23.
//

import SwiftUI
import PhotosUI

struct UploadpostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresented  = false
    @StateObject private var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            
            // action toolbar
            HStack {
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                Spacer()
                
                Button {
                    print("Upload ")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }

            }
            .padding(.horizontal)
            
            // post image and caption
            HStack(spacing: 8) {
                
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                // axis dnum enq vor texty vertikal helni verev
                TextField("Enter your caption", text: $caption, axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        // access enk talis photonerin nerqin
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct UploadpostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadpostView(tabIndex: .constant(0))
    }
}

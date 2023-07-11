//
//  UserStackView.swift
//  InstagramSwiftUI
//
//  Created by Hayk Sakulyan on 11.07.23.
//

import SwiftUI

struct UserStackView: View {
    var value: Int
    var title: String
    var frameWidth: CGFloat
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: frameWidth)
    }
    
}

struct UserStackView_Previews: PreviewProvider {
    static var previews: some View {
        UserStackView(value: 3, title: "Posts", frameWidth: 78)
    }
}

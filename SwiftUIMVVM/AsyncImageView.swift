//
//  AsyncImageView.swift
//  SwiftUIMVVM
//
//  Created by Ravikanth on 21/12/2023.
//

import SwiftUI

struct AsyncImageView: View {
    
    let imageURL: String
    
    var body: some View {
        if let url = URL(string: imageURL) {
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }

        } else {
            ProgressView()
        }
    }
}

#Preview {
    AsyncImageView(imageURL: Product.dummy.image)
}

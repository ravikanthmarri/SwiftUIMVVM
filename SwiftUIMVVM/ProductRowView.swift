//
//  ProductRowView.swift
//  ProductAPISwiftUI
//
//  Created by Ravikanth on 20/12/2023.
//

import SwiftUI

struct ProductRowView: View {
    
    let product: Product
    
    var body: some View {
        HStack(spacing: 8) {
            // Product image
            if let url = URL(string: product.image) {
                productImage(url: url)
            }

            VStack(alignment: .leading, spacing: 8) {
                // Product Title
                Text(product.title)
                    .font(.headline)
                    .lineLimit(2)
                
                // Product category
                HStack {
                    Text(product.category)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                    HStack {
                        Image(systemName: "star.fill")
                        Text(product.rating.rate.toOneDecimalString())
                    }
                    .fontWeight(.medium)
                    .foregroundStyle(.yellow)
                }
                
                // Description
                Text(product.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                
                // Price and Buy button
                HStack {
                    Text(product.price.currencyFormat())
                        .font(.title3)
                        .foregroundStyle(.indigo)

                    Spacer()
                    
                    buyButton
                }
            }
        }
        .padding()
    }
    
    func productImage(url: URL) -> some View {
         AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProductView()
        }
        .frame(width: 100, height: 100)
    }
    
    var buyButton: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Buy")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(.indigo)
                .clipShape(.capsule)
        })
    }
}

#Preview {
    ProductRowView(product: Product.dummy)
}

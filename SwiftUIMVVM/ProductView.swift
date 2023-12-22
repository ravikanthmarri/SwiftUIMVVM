//
//  ProductView.swift
//  SwiftUIMVVM
//
//  Created by Ravikanth on 20/12/2023.
//

import SwiftUI

struct ProductView: View {
    
    var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.products) { product in
                    NavigationLink {
                        ProductDetailsView(product: product)
                    } label: {
                        ProductRowView(product: product)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Products")
            .task {
                await viewModel.fetchProducts()
            }
        }
    }
}

#Preview {
    ProductView()
}

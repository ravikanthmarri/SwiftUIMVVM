//
//  ProductViewModel.swift
//  SwiftUIMVVM
//
//  Created by Ravikanth on 20/12/2023.
//

import Foundation

@Observable
class ProductViewModel {
    
    var products: [Product] = []
    private let manager = APIManager()
    
    func fetchProducts() async {
        do {
            products = try await manager.request(url: "https://fakestoreapi.com/products")
            print(products)
        } catch {
            print("Fetch Product error:", error)
        }
    }
    
}

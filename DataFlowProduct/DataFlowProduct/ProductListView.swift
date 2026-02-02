//
//  ProductListView.swift
//  DataFlowProduct
//
//  Created by Aditya Bansal on 12/01/26.
//

import SwiftUI

struct ProductListView: View {
    @Environment(cart.self) private var cart
    
    var body: some View {
        Text("Hello World!")
    }
}

#Preview {
    ProductListView().environment(Cart())
}

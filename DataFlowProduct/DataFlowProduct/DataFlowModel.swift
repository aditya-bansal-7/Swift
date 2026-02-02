//
//  DataFlowModel.swift
//  DataFlowProduct
//
//  Created by Aditya Bansal on 12/01/26.
//

import Foundation
@Observable
class CartItem{
    var id = UUID()
    var name:String
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}


@Observable
class Cart {
    var items:[CartItem] = []
}

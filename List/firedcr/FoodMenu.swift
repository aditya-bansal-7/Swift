//
//  FoodMenu.swift
//  firedcr
//
//  Created by Aditya Bansal on 08/01/26.
//

import SwiftUI
import Foundation

struct Food: Identifiable {
    var id: UUID = UUID()
    var name: String
}

struct FoodCollection : Identifiable{
    let id = UUID()
    var name : String
    var foods : [Food]
    
}

struct FoodMenu: View {
    
    var foodCollection:[FoodCollection] = [FoodCollection(
        name: "Breakfast",
        foods: [
            Food(name: "Toast"),
            Food(name: "Eggs"),
            Food(
                name: "Fruits"
            )
        ]
    ),FoodCollection(
        name: "Lunch",
        foods: [
            Food(name: "Rice"),
            Food(name: "Dal"),
            Food(
                name: "Vegetables"
            )
        ]
    ),FoodCollection(
        name: "Dinner",
        foods: [
            Food(name: "Roti"),
            Food(name: "Sabji"),
            Food(
                name: "Soup"
            )
        ]
    )]
    
    var body: some View {
        List{
            ForEach(foodCollection) { collection in
                Section{
                    ForEach(collection.foods){food in
                        Text(food.name)
                    }
                }header: {
                    Text(collection.name)
                        .font(.title)
                        .bold()
                }
                
            }
            
        }.foregroundStyle(.black)
        
        
        
    }
}

#Preview {
    FoodMenu()
}

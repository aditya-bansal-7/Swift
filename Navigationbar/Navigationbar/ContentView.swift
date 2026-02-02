//
//  ContentView.swift
//  NavBarCustomisationApp
//
//  Created by Payal Singh on 29/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Text("Buy Grocery")
                Text("Prepare Lecture notes")
                Text("Reply to emails")
            }
            .navigationTitle("Remainders")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button{
                        
                    } label:{
                        Image(systemName: "sidebar.left")
                    }
                }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button{
                            
                        }label:{
                            Image(systemName: "plus")
                        }
                        
                    }
                ToolbarItemGroup(placement: .bottomBar){
                    Button{
                        
                    }label:{
                        Label("New Reminder", systemImage: "plus.circle.fill")
                    }
                    Button{
                        
                    }label: {
                        Label("List", systemImage: "list.bullet")
                    }
                    
                }
                
            }// end of toolbar
            .toolbarColorScheme(.none, for: .navigationBar)
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
            .toolbarBackground(.blue,for: .navigationBar)
        }
    }
}


#Preview {
    ContentView()
}

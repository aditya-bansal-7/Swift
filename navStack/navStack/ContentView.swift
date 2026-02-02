//
//  ContentView.swift
//  navStack
//
//  Created by Aditya Bansal on 19/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink() {
                    AboutUs()
                } label: {
                    HStack{
                        Image(systemName: "graduationcap.fill")
                        Text("About Us")
                    }
                }
            }
            
        }.navigationTitle("Profile")
        
        
        
    }
}

struct AboutUs: View {
    var body: some View {
        VStack {
            
            
            Text("About us")
            ZStack {
                Rectangle()
                    .fill(.green.opacity(0.3))
                    .frame(height:300)
                    .cornerRadius(30)
                    .padding()
                Image(systemName: "graduationcap.fill").font(.custom("abc", size: 100
                                                                    ))
            }
            Text(
                "jhseffgkuysdgfilyads biew iyueawgidyg iydg d vuydgs iysxgvjhzxjhgsx ai dsy dsigdsai ugdsli gdsau dsliyag idsagildgldi galdsig"
            )
            
            Section {
                List {
                    NavigationLink() {
                        YashKaPage()
                    } label: {
                        HStack {
                            Image(systemName: "person")
                            Text("Yash")
                        }
                    }
                }
            }
        }
    }
    
}

struct YashKaPage: View {
    var body: some View {
        Image(systemName: "face.smiling")
        Text("Hey! I am Yash")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
    
}

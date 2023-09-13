//
//  ContentView.swift
//  Appetizers
//
//  Created by Hasna T S on 11/09/23.
//

import SwiftUI

struct AppetizerView: View {
    var body: some View {
        VStack {
            TabView {
                AppetizerListView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                AccountView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
                OrdersView()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Orders")
                    }
                   
            } .accentColor(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerView()
    }
}

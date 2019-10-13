//
//  AppView.swift
//  iDine
//
//  Created by Andy Wu on 10/12/19.
//  Copyright © 2019 Andy Wu. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
            }
            
            OrderView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        AppView().environmentObject(order)
    }
}

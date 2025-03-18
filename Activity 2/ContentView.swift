//
//  ContentView.swift
//  Activity 2
//
//  Created by John Joaquin Valdez on 3/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            FruitsListView()
        }
    }
}

struct FruitsListView: View {
    let fruits: [String] = ["Apple", "Banana", "Orange", "Grapes", "Mango"]
    
    var body: some View {
        List(fruits, id: \.self) {
            item in NavigationLink(destination: SelectedFruitView(item: item)) {
                Text(item)
            }.navigationTitle("Fruits")
        }
    }
}

struct SelectedFruitView: View {
    let item: String
    
    var body: some View {
        VStack {
            Text("You selected \(item).")
                .font(.largeTitle)
                .padding()
                .navigationTitle(item)
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftUI Picker
//
//  Created by Can Balkaya on 8/16/20.
//  Copyright © 2020 TurkishKit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    var products = ["Mac", "iPhone", "iPad", "iPod"]
    @State private var selectedProduct = 0
    
    // MARK: - UI Elements
    var body: some View {
        VStack {
            Text(products[selectedProduct])

            Picker(selection: $selectedProduct, label: Text("Product")) {
                ForEach(0 ..< products.count) {
                    Text(self.products[$0])
                }
            }.labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

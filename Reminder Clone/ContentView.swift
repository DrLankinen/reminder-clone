//
//  ContentView.swift
//  Reminder Clone
//
//  Created by Elias Lankinen on 7/21/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    @State private var showMenu = false
    @State private var itemName: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items, id: \.self) { item in
                    CheckListItem(item: item)
                }
            }
                .navigationBarTitle(Text("List Items"))
                .navigationBarItems(trailing: Button(action: {
                    self.showMenu = true
                }, label: {
                    Image(systemName: "plus")
                }))
        }.sheet(isPresented: $showMenu) {
            NavigationView {
                Form {
                    TextField("Name", text: self.$itemName)
                    Button(action: {
                        self.viewModel.addItem(self.itemName)
                        self.showMenu = false
                        self.itemName = ""
                    }, label: {
                        Text("Add")
                    })
                }
                    .navigationBarTitle(Text("New"))
                    .navigationBarItems(trailing:
                        Button(action: {
                            self.showMenu = false
                            self.itemName = ""
                        }, label: {
                            Text("Done")
                        })
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

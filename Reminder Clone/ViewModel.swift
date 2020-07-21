//
//  ViewModel.swift
//  Reminder Clone
//
//  Created by Elias Lankinen on 7/21/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published private var listItems = Array<ListItem>()
    
    var items: Array<ListItem> {
        listItems
    }
    
    func addItem(_ label: String) {
        listItems.append(ListItem(label))
    }
}

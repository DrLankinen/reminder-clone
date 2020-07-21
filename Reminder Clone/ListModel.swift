//
//  List.swift
//  Reminder Clone
//
//  Created by Elias Lankinen on 7/21/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import Foundation

struct ListModel {
    private var items: Array<String>
    
    mutating func addItem(item: String) {
        items.append(item)
    }
}

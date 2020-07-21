//
//  CheckListItem.swift
//  Reminder Clone
//
//  Created by Elias Lankinen on 7/21/20.
//  Copyright © 2020 Elias Lankinen. All rights reserved.
//

import SwiftUI

struct CheckListItem: View {
    @State var item: ListItem
//    private var viewModel: ViewModel
//    private var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                print("ValUE:",self.item.isChecked)
                self.item.changeIsChecked()
            }, label: {
                Image(systemName: item.isChecked ? "circle.fill" : "circle")
                    .resizable()
                    .frame(width: 20, height: 20)
            })
            Text(item.label)
        }
    }
}

//struct CheckListItem_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckListItem()
//    }
//}

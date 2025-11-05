//
//  UurroosterDetailView.swift
//  lab5async
//
//  Created by Boyd Bulcaen on 05/11/2025.
//

import SwiftUI

struct UurroosterDetailView: View {
    var element : EventModel
    var body: some View {
        HStack{
            HStack{
                Text(element.title)
            }
        }
    }
}

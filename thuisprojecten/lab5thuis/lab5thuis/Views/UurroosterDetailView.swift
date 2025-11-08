//
//  UurroosterDetailView.swift
//  lab5thuis
//
//  Created by boyd on 08/11/2025.
//

import SwiftUI

struct UurroosterDetailView: View {
    var element : EventModel
    var body: some View {
        HStack(alignment: .top){
            HStack{
                Text(element.title)
                    .background(.red)
            }
        }
        Divider()
        VStack(alignment: .leading){
            Text(element.location)
            HStack{
                Text("Start")
                Spacer() //spacer zorgt er hier voor dat de datumtijd rechts staat
                Text(DateUtil.formatDateTime(date: element.startDateTime))
            }
            HStack{
                Text("Einde")
                Spacer()
                Text(DateUtil.formatDateTime(date: element.endDateTime))
            }
            Divider()
            Text("\u{00A9}")
                .frame(maxWidth: .infinity, alignment: .center)

        }
    }
}

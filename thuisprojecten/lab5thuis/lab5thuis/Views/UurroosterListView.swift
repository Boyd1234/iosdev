//
//  UurroosterListView.swift
//  lab5thuis
//
//  Created by boyd on 08/11/2025.
//

import SwiftUI

import SwiftUI

struct UurroosterListView: View {
    @Environment(UurroosterDataStore.self) private var dataStore
    @State var loading = true;
    @State var selectedId: String?
    var body: some View {
        if loading {
            ProgressView("Loading...")
                .task {
                    await dataStore.loadData()
                    loading = false
                }
        } else {
            NavigationSplitView {
                List(dataStore.getEvents(), id: \.id, selection: $selectedId) { event in
                    VStack(alignment: .leading){
                        Text(DateUtil.formatDate(date: event.startDateTime))
                            .font(.headline)
                        
                        Spacer()
                        Text(event.title)
                        }
                        .padding(4)
                        .listRowBackground(event.id == selectedId ? Color.red.opacity(1.0) : Color.clear)
                        .cornerRadius(6)
                    }
//                .toolbar(content: <#T##() -> Content#>)
            } detail: {
                if let id = selectedId{
                    let element = dataStore.getEvent(id: id)
                    UurroosterDetailView(element: element!)
                }
            }
            .navigationTitle("Uurrooster")
        }
    }
}

#Preview {
    UurroosterListView()
}

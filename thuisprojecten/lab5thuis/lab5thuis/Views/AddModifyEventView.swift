//
//  AddModifyEventView.swift
//  lab5thuis
//
//  Created by boyd on 08/11/2025.
//

import SwiftUI

struct AddModifyEventView: View {
    var event: EventModel?
    
    // Computed properties
    var isNew: Bool {
        event == nil
    }
    var header: String {
        isNew ? "ADD EVENT" : "EDIT EVENT"
    }
    
    // State properties moeten standaardwaarden hebben
    @State private var startTime: Date = Date()
    @State private var endTime: Date = Date()
    @State private var location: String = ""
    @State private var allDay: Bool = false
    @State private var title: String = ""
    
    // Initializer om state correct te vullen met event-data (indien aanwezig)
    init(event: EventModel? = nil) {
        self.event = event
        _startTime = State(initialValue: event?.startDateTime ?? Date())
        _endTime = State(initialValue: event?.endDateTime ?? Date())
        _location = State(initialValue: event?.location ?? "")
        _allDay = State(initialValue: event?.allDay ?? false)
        _title = State(initialValue: event?.title ?? "")
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(header)
                .font(.headline)
                .padding(.bottom, 10)
            
            TextField("Title", text: $title)
                .textFieldStyle(.roundedBorder)
            
            HStack {
                Text("Location:")
                TextField("Enter location", text: $location)
                    .textFieldStyle(.roundedBorder)
            }
            
            Toggle("All day?", isOn: $allDay)
                .toggleStyle(.checkbox)
            
            DatePicker("Start date & time:", selection: $startTime, displayedComponents: [.date, .hourAndMinute])
            DatePicker("End date & time:", selection: $endTime, displayedComponents: [.date, .hourAndMinute])
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AddModifyEventView()
}

//
//  AddModifyEventView.swift
//  lab5thuis
//
//  Created by boyd on 08/11/2025.
//

import SwiftUI

struct AddModifyEventView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(UurroosterDataStore.self) private var dataStore
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
    @Binding var selectedId: String?
    @State private var selectedOption = 0;

    
    // Initializer om state correct te vullen met event-data (indien aanwezig)
    init(selectedId: Binding<String?>, event: EventModel? = nil) {
        self.event = event
        self._selectedId = selectedId
        
        _startTime = State(initialValue: event?.startDateTime ?? Date())
        _endTime = State(initialValue: event?.endDateTime ?? Date())
        _location = State(initialValue: event?.location ?? "")
        _allDay = State(initialValue: event?.allDay ?? false)
        _title = State(initialValue: event?.title ?? "")
        _selectedOption = State(initialValue: event?.type ?? 0)
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
            Picker("Type", selection: $selectedOption) {
                            Text("Academic").tag(0)
                            Text("Course").tag(1)
                        }
            .pickerStyle(.segmented) //maakt er een switch van (dus naast elkaar)
            .tint(.red) //maakt geselecteerde knop rood
            Spacer()
        }
        .padding()
                Spacer()
                HStack{
                    Button("Save") {
                        let idevent = event?.id ?? UUID().uuidString

                        let e = EventModel(
                            id: idevent,
                            allDay: allDay,
                            title: title,
                            location: location,
                            type: selectedOption,
                            startDateTime: startTime,
                            endDateTime: endTime
                        )
                        
                        if header == "ADD EVENT" {
                            dataStore.addEvent(event: e)
                        } else {
                            dataStore.updateEvent(event: e)
                        }
                        selectedId = nil
                        dismiss()

                    }
                    Button("Cancel") {
                        selectedId = nil
                        dismiss()
                    }
                }
                .padding(.top, 12)
                
            
    }
}

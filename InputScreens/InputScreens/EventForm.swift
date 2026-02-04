//
//  EventForm.swift
//  InputScreens
//
//  Created by Aditya Bansal on 03/02/26.
//

import SwiftUI

enum EventType: String, CaseIterable,Identifiable {
    case workshop = "WorkShop"
    case seminar = "Seminar"
    case session = "Session"
    
    var id: Self { self }
}

struct EventForm: View {
    
    @State var title = ""
    @State var description = ""
    @State var type: EventType = .seminar
    @State var startDate = Date()
    @State var endDate = Date().addingTimeInterval(86400)
    @State var venue = ""
    
    @State var isPublicEvent = false
    
    @State var coordinators: [String] = []
    
    
    
    var body: some View {
        
        
        Form {
            
            Section{
                TextField("Title", text: $title)
                VStack(alignment: .leading) {
                    Text("Description")
                    TextEditor(text: $description).frame(height: 70)
                }
                Picker("Type", selection: $type) {
                    ForEach(EventType.allCases){ event in
                        Text(event.rawValue).tag(type)
                    }
                }
                DatePicker("Start Date", selection: $startDate)
                DatePicker(
                    "End Date",
                    selection: $startDate
                )
                TextField("Venue", text: $venue)
            }
            
            Section{
                ForEach(coordinators.indices, id: \.self) { index in
                    HStack{
                        Text("Coordinatior: ").onTapGesture {
                            
                        }
                        TextField("coordinator", text: $coordinators[index])
                        Button {
                            coordinators.remove(at: index)
                        } label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundStyle(.red)
                        }
                    }
                }
                
                Button {
                    coordinators.append("")
                } label: {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .foregroundStyle(.green)
                        Text("add coordinators").foregroundStyle(.black)
                    }
                }
            }
            
            Section{
                Toggle("Is event public?", isOn: $isPublicEvent)
            }
            
        }
    }
}


#Preview {
    EventForm(
        
    )
}

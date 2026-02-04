//
//  ContentView.swift
//  InputScreens
//
//  Created by Aditya Bansal on 03/02/26.
//

import SwiftUI

enum CSESpecialization: String, CaseIterable, Identifiable {
    case artificialIntelligence = "Artificial Intelligence"
    case webDevelopment = "Web Development"
    case dataScience = "Data Science"

    var id: Self { self }
}

enum MileStones: String, CaseIterable, Identifiable {
    case problemStatement = "Problem Statement"
    case userResearch = "User Research"
    
    var id: Self { self }
}

struct ContentView: View {
    
    @State var cohortNumber = 1
    @State var teamNumber = 1
    @State var name = ""
    @State var admissionno = ""
    @State var coreBranch = false
    @State var specialization: CSESpecialization?
    
    @State var appName = ""
    @State var appDescription = ""
    @State var appMilestone: MileStones?
    @State var appDate: Date = Date()
    

    
    var body: some View {
        NavigationStack{
            VStack {
                Form {
                    Section {
                        Picker("Cohort", selection: $cohortNumber) {
                            ForEach(1...3,id:\.self){ cohort in
                                Text("\(cohort)")
                            }
                        }
                        Picker("Team", selection: $teamNumber) {
                            ForEach(1...25,id:\.self){ team in
                                Text("\(team)")
                            }
                        }
                    } header: {
                        Text("Basic Details")
                    }
                    Section {
                        
                        TextField("Name", text: $name)
                        
                        TextField("Admission no.", text: $admissionno)
                        
                        Toggle("Core branch student", isOn: $coreBranch)
                        
                        VStack(alignment: .leading) {
                            Picker("Specialization", selection: $specialization) {
                                ForEach(CSESpecialization.allCases) { spec in
                                    Text(spec.rawValue).tag(Optional(spec))
                                }
                                
                            }
                            .pickerStyle(.navigationLink)
                            .disabled(coreBranch)
            
                            if coreBranch {
                                Text("Specilizaton is not for core Branch")
                                    .font(.footnote)
                                    .foregroundStyle(.red)
                            }
                        }
                        
                        
                        
                    } header: {
                        Text("Student Details")
                    }
                    
                    Section {
                        
                        TextField("App Name", text: $appName)
                        
                        GroupBox {
                            VStack(alignment: .leading){
                                Section(){
                                    TextEditor(text: $appDescription)
                                        .frame(height: 100)
                                        
                                    
                                } header: {
                                    Text("Description")
                                } footer: {
                                    Text(
                                        "The description must include use of tech stack used"
                                    )
                                    .foregroundStyle(.gray)
                                }
                            }
                        }
                        
                        
                        Picker("Milestone", selection: $appMilestone) {
                            ForEach(MileStones.allCases) { milestone in
                                Text(milestone.rawValue).tag(Optional(milestone))
                            }
                        }.pickerStyle(.navigationLink)
                        
                        DatePicker(
                            "Date",
                            selection: $appDate,
                            in: ...Date(),
                            displayedComponents: .date
                        )
                    } header: {
                        Text("App Details")
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

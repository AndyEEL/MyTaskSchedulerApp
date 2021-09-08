//
//  TaskModel.swift
//  TaskModel
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

// Model
struct TaskModel: Identifiable {
    
    let id = UUID()
    let date: Date
    let title: String
    let content: String
    let progress: Double
    
}

// Dummy
class Tasks: ObservableObject {
    
    @Published var dummyTasks: [TaskModel] = [
        TaskModel(date: Date(timeIntervalSince1970: 410220000), title: "Ideation for a new mobile service", content: "Team BrainStorming and BrainWriting.", progress: 0.4),
        TaskModel(date: Date(timeIntervalSince1970: 410230000), title: "Naming the our new mobile service", content: "Adapting our value with a new name.", progress: 0.1),
        TaskModel(date: Date(timeIntervalSince1970: 410230000), title: "Planning more detail ", content: "Integrating User-Experience with our value/service", progress: 0.8),
        TaskModel(date: Date(timeIntervalSince1970: 410330000), title: "Designing UI", content: "Considering UIUX and benchmarking reference designs", progress: 1),
        TaskModel(date: Date(timeIntervalSince1970: 410430000), title: "Developing with Agile methology", content: "Repeating Story-Analysis cycles", progress: 0.75)
    ]
}

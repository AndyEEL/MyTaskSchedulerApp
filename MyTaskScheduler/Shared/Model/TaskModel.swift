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
    var progress: Double
    
}

// Dummy View Model
class TaskViewModel: ObservableObject {
    
    @Published var dummyTasks: [TaskModel] = [
        TaskModel(date: Date(timeIntervalSince1970: 410235000), title: "Ideation for a new mobile service", content: "Team BrainStorming and BrainWriting.", progress: 0.2),
        TaskModel(date: Date(timeIntervalSince1970: 410245000), title: "Naming the our new mobile service", content: "Adapting our value with a new name.", progress: 0.4),
        TaskModel(date: Date(timeIntervalSince1970: 410260000), title: "Planning more detail ", content: "Integrating User-Experience with our value/service", progress: 0.6),
        TaskModel(date: Date(timeIntervalSince1970: 410275000), title: "Designing UI", content: "Considering UIUX and benchmarking reference designs", progress: 0.8),
        TaskModel(date: Date(timeIntervalSince1970: 410290000), title: "Developing with Agile methology", content: "Repeating Story-Analysis cycles", progress: 1)
    ]
}

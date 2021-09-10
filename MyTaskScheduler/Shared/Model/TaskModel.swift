//
//  TaskModel.swift
//  TaskModel
//
//  Created by 이동건 on 2021/09/07.
//

import Foundation

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
    
    //MARK: -Dummy Data
    
    
    @Published var Tasks: [TaskModel]
    
    init(from TaskModels: [TaskModel] = dummy) {
        
        self.Tasks = TaskModels
    }
    
    
    //MARK: -Helpers
    
    // 테스크 모델 받으면, 년 월 일 시간 파악하는 함수
    func estimateDateComponents(from date: Date) -> DateComponents{
        let myCalendar = Calendar(identifier: .gregorian)
        return myCalendar.dateComponents([.year,.hour,.day], from: date)
    }
    
    // 년 월 일 바탕으로 그룹으로 만들어서 셀에게 줄 딕셔너리_데이터 만들기
    func arrangeCell(from dateComponents: DateComponents) {
        let dictionary: [DateComponents: [TaskModel]] 
        
    }
    
    
}





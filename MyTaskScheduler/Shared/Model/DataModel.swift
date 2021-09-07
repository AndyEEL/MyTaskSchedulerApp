//
//  DataModel.swift
//  DataModel
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct DayModel: Identifiable {
        
    let id: UUID = UUID()
    let date: Date
    let task: [TimeTask]
    
}

struct TimeTask: Identifiable {
    let id: UUID = UUID()
    
}


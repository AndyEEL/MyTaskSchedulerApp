//
//  TaskCard.swift
//  TaskCardView
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct TaskCardView: View {
    
    // MARK: Properties
    @Binding var indexData: TaskModel
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Text(indexData.title)
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    
                Spacer()

            }
            Text(translateToString(from: indexData.date))
                .font(.caption)
                .foregroundColor(.black)
                
            ProgressView("Progress", value: indexData.progress)
                .foregroundColor(.black)
            
            Text(indexData.content)
                .font(.caption)
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
            
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
    }
    
    // MARK: Helper
    func translateToString(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: date)
    }
}



struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

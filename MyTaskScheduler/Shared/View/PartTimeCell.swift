//
//  PartTimeCell.swift
//  PartTimeCell
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct PartTimeCell: View {
    
    @Binding var indexData: TaskData
    
    func translateDatetoString(date: Date) -> String {
        let dateFormateer = DateFormatter()
        dateFormateer.timeStyle = .short
        dateFormateer.dateStyle = .short
        dateFormateer.locale = Locale(identifier: "en_US")
        
        return dateFormateer.string(from: date)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Text(indexData.title)
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    
                Spacer()

            }
            Text(translateDatetoString(date: indexData.date))
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
}



struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

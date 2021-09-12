//
//  TaskCard.swift
//  TaskCardView
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct TaskCardView: View {
    
    // MARK: - Properties
    @Binding var indexData: TaskModel
    
    private var TimeColor: Color {
        TimeConverterToColor(by: indexData.date)
    }
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Text(indexData.title)
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
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
        .background(TimeColor.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                .font(.title2)
                .offset(x:-22,y:14)
                .foregroundColor(TimeColor)
            
        }
    }
    
    // MARK: - Helper
    
    // Translate Date to String
    func translateToString(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: date)
    }
    
    // Make a time View according to Date time
    func TimeConverterToColor(by date: Date) -> Color {
        
        // translate time to timezone
        let myCalendar = Calendar(identifier: .gregorian)
        let Components = myCalendar.dateComponents([.hour], from: date)
        
        // by enum_Timezone, Build a View
        switch Components.hour{
        case 7,8,9,10:
//            print("Morning")
            return Color.blue
        case 11,12:
//            print("Lunch")
            return Color.purple
        case 13,14,15,16:
//            print("Afternoon")
            return Color.pink
        case 17,18:
//            print("Dinner")
            return Color.orange
        case 19,20,21,22:
//            print("Evening")
            return Color.green
        case 23,0,1,2:
//            print("Night")
            return Color.cyan
        default:
//            print("otherTimes")
            return Color.gray
        }
    }
}

enum TimeDivider {
    case Morning
    case Lunch
    case Afternoon
    case Dinner
    case Evening
    case Midnight
    case otherTimes
}




struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

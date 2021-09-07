//
//  PartTimeCell.swift
//  PartTimeCell
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct PartTimeCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Text("Car Rent App Coding")
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    
                    
                Spacer()

            }
            Text("Morning: 9:00 ~ 12:00" )
                .font(.caption)
                .foregroundColor(.black)
                
            ProgressView("Progress", value: 0.5)
                .foregroundColor(.black)
            
            Text("Complete the story for Agile value. 3 Things are working. that are translating, coding and refactoring")
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

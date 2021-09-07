//
//  DayCell.swift
//  DayCell
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct DayCell: View {
    var body: some View {
        VStack{
            Divider()
            HStack{
                Text("Setember 7th")
                    .font(.title.bold())
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal,18)
        }
        
    }
}

struct DayCell_Previews: PreviewProvider {
    static var previews: some View {
        DayCell()
    }
}

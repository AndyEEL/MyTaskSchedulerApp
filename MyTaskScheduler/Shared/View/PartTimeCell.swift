//
//  PartTimeCell.swift
//  PartTimeCell
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct PartTimeCell: View {
    var body: some View {
        VStack{
            HStack {
                Text("September 5th")
                    .font(.title)
                    .fontWeight(.bold)
                VStack {
                    ProgressView(value: 0.66)
                    Text("66%")
                }
                Button(action: {
                    print("Edit button was tapped")
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            
            
            HStack{
                VStack{
                    Text("오전")
                    Text("아침밥 먹기")
                }
                VStack{
                    Text("오후")
                    Circle()
                }
                VStack{
                    Text("저녁")
                    Circle()
                }
                VStack{
                    Text("밤")
                    Circle()
                }
                VStack{
                    Text("새벽")
                    Circle()
                }
            }
        }
        .frame(height: 200)
        .background(Color.green)
        .cornerRadius(10)
        .padding()
    }
}

struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        PartTimeCell()
    }
}

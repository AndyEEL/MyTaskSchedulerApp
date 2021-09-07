//
//  PartTimeCell.swift
//  PartTimeCell
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct PartTimeCell: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("오전 10시")
                Text("근영이와 약속")
            }
            Spacer()
            VStack{
                Button {
                    print("pressed btn")
                } label: {
                    Image(systemName: "checkmark")
                        .font(.title2)
                }
                Button {
                    print("pressed btn")
                } label: {
                    Image(systemName: "checkmark")
                        .font(.title2)
                }

            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue.opacity(0.7))
        }
        .padding(.horizontal,5)
        .padding(.vertical,2.4)
        
        
        
    }
}


struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

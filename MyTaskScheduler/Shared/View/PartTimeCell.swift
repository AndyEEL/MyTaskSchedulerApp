//
//  PartTimeCell.swift
//  PartTimeCell
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct PartTimeCell: View {
    var body: some View {
        GeometryReader{ proxy in
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.blue, lineWidth: 4)
                
                
                Text("6일(월)")
                    .font(.title)
                    .frame(width: proxy.size.width / 3.4)
                    .background(Color.white)
                    .offset(x: (-proxy.frame(in: .local).maxX + proxy.size.width / 3) / 2.5,
                            y: -proxy.frame(in: .local).height/2)
            }
        }
        .frame(height: 200)
        .padding()
        
    }
}

struct PartTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

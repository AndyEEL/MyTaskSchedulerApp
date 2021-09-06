//
//  TimeCell.swift
//  TimeCell
//
//  Created by 이동건 on 2021/09/06.
//

import SwiftUI

struct TimeCell: View {
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("10시")
                    Text("근영이와 약속")
                    
                }
                
                
                VStack{
                    Button {
                        print("Button pressed")
                    } label: {
                        Image(systemName: "checkmark.circle")
                    }
                    Button {
                        print("Button pressed")
                    } label: {
                        Image(systemName: "checkmark")
                    } 
                }
            }
            
        }
    }
}

struct TimeCell_Previews: PreviewProvider {
    static var previews: some View {
        TimeCell()
    }
}


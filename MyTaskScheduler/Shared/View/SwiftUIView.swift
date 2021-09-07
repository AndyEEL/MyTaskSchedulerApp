//
//  SwiftUIView.swift
//  SwiftUIView
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThickMaterial)
            .frame(width: 200, height:200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
        
    
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

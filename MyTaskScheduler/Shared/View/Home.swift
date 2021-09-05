//
//  Home.swift
//  Home
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) { ForEach(0..<20)
                { items in
                    PartTimeCell()
                }
            }
        }
        
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

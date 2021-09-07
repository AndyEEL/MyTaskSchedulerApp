//
//  Home.swift
//  Home
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                ForEach(0..<4){ index in
                    NavigationLink {
                        Text("hello")
                    } label: {
                        PartTimeCell()
                    }
                    
                }
                Spacer()
                
            }
            
            
            .navigationTitle("Task Scheduler")
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

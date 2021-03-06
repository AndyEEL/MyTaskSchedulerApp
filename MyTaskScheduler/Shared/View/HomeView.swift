//
//  Home.swift
//  Home
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct HomeView: View {
    // MARK: Properties
    @ObservedObject var taskdata: TaskViewModel
    
    // MARK: Body
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack{
                    
                    Divider()
                    
                    HStack{
                        Text("Setember 7th")
                            .font(.title.bold())
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal,18)
                    
                    ForEach(0..<taskdata.Tasks.count){ index in
                        
                        NavigationLink {
                            
                        } label: {
                            TaskCardView(indexData: $taskdata.Tasks[index])
                            
                        }
                    }
                }
            }
            
            .navigationTitle("Task Scheduler")
            .toolbar {
                Button {
                    print("pressed btn")
                } label: {
                    Image(systemName: "plus")
                }                
            }
        }
        .navigationViewStyle(.stack)
    }
    
    
    // MARK: Helpers
    
    
    
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

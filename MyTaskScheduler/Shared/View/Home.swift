//
//  Home.swift
//  Home
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct Home: View {
    
    init(){
        // if navBar is with large title
        //        UINavigationBar.appearance().backgroundColor = .blue
    }
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack{
                    DayCell()
                    
                    ForEach(0..<20){ index in
                        
                        NavigationLink {
                            
                        } label: {
                            PartTimeCell()
                        }
                        
                    }
                    Spacer()
                    
                }
                //                .background(Color.black.ignoresSafeArea(.all))
                
            }
            
            .refreshable {
                // add a new task
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

    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

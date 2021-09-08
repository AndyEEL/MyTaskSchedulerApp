//
//  MainTabView.swift
//  MainTabView
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct MainTabView: View {
    
    @ObservedObject var taskdata: Tasks
    
    @State private var isSelectedHomeView : Bool = true
    
    // Default Tabbar be invisible...
    init(taskdata: Tasks){
        self.taskdata = taskdata
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $isSelectedHomeView) {
            if isSelectedHomeView {
                HomeView(taskdata: taskdata)
            }
            else {
                DashboardView()
            }
        }
        .overlay(alignment: .bottom) {
            HStack(spacing: 124){
                Button {
                    isSelectedHomeView = true
                } label: {
                    VStack{
                        Image(systemName: "house")
                            .font(.title2)
                        Text("Home")
                            .font(.caption)
                    }
                }
                .foregroundColor(isSelectedHomeView == true ? .blue : .gray)
                
                Button {
                    isSelectedHomeView = false
                } label: {
                    VStack{
                        Image(systemName: "chart.bar.xaxis")
                            .font(.title2)
                        Text("Dashboard")
                            .font(.caption)
                    }
                }
                .foregroundColor(isSelectedHomeView != true ? .blue : .gray)
            }
            .frame(maxWidth:.infinity)
            .padding(.vertical,4)
            .padding(.bottom, 2)
            .background(.thinMaterial, in: Capsule())
            .padding(.horizontal,20)
            .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
            .shadow(color: .black.opacity(0.05), radius: 5, x: -5, y: 5)
        }
    }
}
struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  CustomTabView.swift
//  CustomTabView
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct CustomTabView: View {
    
    @State var isHomeView : Bool = true
    
    init(){
        UITabBar.appearance().isHidden = true

        
    }
    
    var body: some View {
        
        TabView(selection: $isHomeView) {
            if isHomeView {
                Home()
            }
            else {
                Text("Dashboard View")
            }
        }
        .overlay(alignment: .bottom) {
            HStack(spacing: 124){
                Button {
                    isHomeView = true
                } label: {
                    VStack{
                        Image(systemName: "house")
                            .font(.title2)
                        Text("Home")
                            .font(.caption)
                    }
                }
                .foregroundColor(isHomeView == true ? .blue : .gray)
                
                Button {
                    isHomeView = false
                } label: {
                    VStack{
                        Image(systemName: "chart.bar.xaxis")
                            .font(.title2)
                        Text("Dashboard")
                            .font(.caption)
                    }
                    
                }
                .foregroundColor(isHomeView != true ? .blue : .gray)
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


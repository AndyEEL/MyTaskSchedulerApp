//
//  ContentView.swift
//  Shared
//
//  Created by 이동건 on 2021/09/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MainTabView(taskdata: Tasks())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

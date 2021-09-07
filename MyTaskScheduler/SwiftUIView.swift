//
//  SwiftUIView.swift
//  SwiftUIView
//
//  Created by 이동건 on 2021/09/07.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
        Section {
            ProgressView("Progress", value: 0.5)
        } header: {
            Text("header")
        } footer: {
            Text("footer")
        }
        }
        
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

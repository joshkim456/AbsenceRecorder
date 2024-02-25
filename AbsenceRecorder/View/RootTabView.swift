//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 25/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Divisions")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Statistics")
                }
        }
    }
}

#Preview {
    RootTabView()
}

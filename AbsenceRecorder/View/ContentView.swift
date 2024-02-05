//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 05/02/2024.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay()}) {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}

//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 25/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}


//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 05/02/2024.
//

import SwiftUI

struct DivisionItem: View {
    let division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.students.count).circle")
            Text("\(division.code)")
        }
    }
}

#Preview {
    DivisionItem(division: Division(code: "vBY-1"))
}

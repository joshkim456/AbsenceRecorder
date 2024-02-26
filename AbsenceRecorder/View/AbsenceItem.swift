//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 26/02/2024.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if studentAbsence.isAbsent {
                Button("❌", action: { toggleAbsent() })
            } else {
                Button("✔️", action: { toggleAbsent ()})
            }
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
    
}

#Preview {
    AbsenceItem(studentAbsence: StudentAbsence.example)
}

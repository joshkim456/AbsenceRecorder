//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Kim, Joshua (WING) on 29/02/2024.
//

import Foundation

extension FileManager {
    private func getDocumentDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

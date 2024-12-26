//
//  Model.swift
//  RecordMiniApp
//
//  Created by Jamorn Suttipong on 8/9/2567 BE.
//

import Foundation

enum Model: String, CaseIterable, Identifiable {
    case all = "All"
    case transcribed = "Transcribed"
    case inProgress = "In-Progress"
    case cancelled = "Cancelled"
    
    var id: String { self.rawValue }
}

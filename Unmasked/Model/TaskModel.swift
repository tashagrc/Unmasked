//
//  TaskModel.swift
//  Unmasked
//
//  Created by Natasha Radika on 26/06/24.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

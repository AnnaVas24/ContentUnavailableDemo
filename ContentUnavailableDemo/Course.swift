//
//  Course.swift
//  ContentUnavailableDemo
//
//  Created by Vasichko Anna on 29.06.2023.
//

import Foundation

struct Course: Identifiable {
    let id = UUID()
    let name: String
    
    
    static func getCourses() -> [Course] {
        [
            Course(name: "UIKIt"),
            Course(name: "SwiftUI"),
            Course(name: "Network requests"),
            Course(name: "Core Data")
        ]
    }
}

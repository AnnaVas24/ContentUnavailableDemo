//
//  DemoView.swift
//  ContentUnavailableDemo
//
//  Created by Vasichko Anna on 29.06.2023.
//

import SwiftUI

struct DemoView: View {
    @State private var searchText = ""
    private let courses = Course.getCourses()
    
    private var searchResults: [Course] {
        searchText.isEmpty
        ? courses
        : courses.filter { $0.name.contains(searchText)}
    }
    
    var body: some View {
        NavigationStack {
            List(searchResults) { course in
                Text(course.name)
            }
            .navigationTitle("Courses")
            .searchable(text: $searchText)
            .overlay {
                if searchResults.isEmpty, !searchText.isEmpty {
                    ContentUnavailableView(
                        "No courses found for \(searchText)",
                        systemImage: "book.circle.fill",
                        description: Text("Try to search for another course")
                    )
                }
            }
        }
    }
    
}

#Preview {
    DemoView()
}

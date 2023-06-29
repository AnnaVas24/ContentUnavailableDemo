//
//  ViewController.swift
//  ContentUnavailableDemo
//
//  Created by Vasichko Anna on 29.06.2023.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHostingConfig()
    }


    private func setupEmptyConfig() {
        var config = UIContentUnavailableConfiguration.empty()
        config.image = UIImage(systemName: "swift")
        config.text = "SwiftBook"
        config.secondaryText = "Content Unavailable Configuration"
        self.contentUnavailableConfiguration = config
    }
    
    
    private func setupLoadingConfig() {
        var config = UIContentUnavailableConfiguration.loading()
        config.text = "Waiting for a response"
        config.textProperties.color = .systemBlue
        config.textProperties.font = .boldSystemFont(ofSize: 20)
        self.contentUnavailableConfiguration = config
    }
    
    private func setupSearchConfig() {
        var config = UIContentUnavailableConfiguration.search()
        config.text = "No Results"
        config.secondaryText = "Try again later"
        self.contentUnavailableConfiguration = config
    }
    
    private func setupHostingConfig() {
        let config = UIHostingConfiguration {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Contact Swiftbook to [learn more](https://swiftbook.org)")
                .font(.title)
                .multilineTextAlignment(.center)
        }

        self.contentUnavailableConfiguration = config
    }
}


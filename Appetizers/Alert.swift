//
//  Alert.swift
//  Appetizers
//
//  Created by Hasna T S on 12/09/23.
//

import SwiftUI

struct ALertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidData = ALertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = ALertItem(title: Text("server Error"),
                                           message: Text("Invalid response fropm the server. Please try again later or contact support"),
                                           dismissButton:  .default(Text("OK")))
    
    static let invalidURL = ALertItem(title: Text("server Error"),
                                      message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = ALertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. pleae check your internet connection"),
                                            dismissButton: .default(Text("OK")))
    
}

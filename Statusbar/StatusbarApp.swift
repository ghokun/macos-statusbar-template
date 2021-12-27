//
//  StatusbarApp.swift
//  Statusbar
//
//  Created by Gokhun on 12/27/21.
//

import SwiftUI

@main
struct StatusbarApp: App {

	@NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

	var body: some Scene {
		Settings {
			ContentView()
		}
	}
}

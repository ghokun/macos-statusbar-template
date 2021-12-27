//
//  AppDelegate.swift
//  Statusbar
//
//  Created by Gokhun on 12/27/21.
//
import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

	var statusBarItem: NSStatusItem!
	var statusBarMenu: NSMenu!

	func applicationDidFinishLaunching(_ notification: Notification) {

		// Returns the system-wide status bar located in the menu bar.
		let statusBar = NSStatusBar.system

		// Returns a newly created status item that has been allotted a specified space within the status bar.
		self.statusBarItem = statusBar.statusItem(withLength: NSStatusItem.squareLength)
		self.statusBarItem.button?.image = NSImage(systemSymbolName: "star.fill", accessibilityDescription: "Status bar icon")

		// An object that manages an app’s menus.
		self.statusBarMenu = NSMenu()
		self.statusBarMenu.addItem(withTitle: "Hello", action: #selector(sayHello), keyEquivalent: "")

		// Add menu to statusbar
		self.statusBarItem.menu = self.statusBarMenu
	}

	@objc func sayHello() {
		// Get focus from other apps
		NSApplication.shared.activate(ignoringOtherApps: true)

		// Create the frame to draw window
		let hello = NSWindow(
			contentRect: NSRect(x: 0, y: 0, width: 640, height: 480),
			styleMask: [.titled, .closable, .fullSizeContentView],
			backing: .buffered,
			defer: false
		)
		// Add title
		hello.title = "Hello!"

		// Keeps window reference active, we need to use this when using NSHostingView
		hello.isReleasedWhenClosed = false

		// Lets us use SwiftUI viws with AppKit
		hello.contentView = NSHostingView(rootView: HelloView())

		// Center and bring forward
		hello.center()
		hello.makeKeyAndOrderFront(nil)
	}
}

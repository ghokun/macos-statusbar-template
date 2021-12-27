//
//  HelloView.swift
//  Statusbar
//
//  Created by Gokhun on 12/27/21.
//

import SwiftUI

struct HelloView: View {
	var body: some View {
		Text("Hello from statusbar")
			.frame(width: 200, height: 100, alignment: .center)
	}
}

struct HelloView_Previews: PreviewProvider {
	static var previews: some View {
		HelloView()
	}
}

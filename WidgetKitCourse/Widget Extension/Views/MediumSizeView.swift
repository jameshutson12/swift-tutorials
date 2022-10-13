//
//  MediumSizeView.swift
//  Widget ExtensionExtension
//
//  Created by Florian Schweizer on 01.12.21.
//

import WidgetKit
import SwiftUI

struct MediumSizeView: View {
    var entry: SimpleEntry
    
    var body: some View {
        GroupBox {
            HStack {
                Text(Date.now, format: .dateTime.hour().minute().second())
            }
            .padding()
        } label: {
            Label("Refreshed", systemImage: "list.dash")
        }
        .widgetURL(URL(string: "myapp://todo/\(entry.todos.first?.id ?? 0)"))
    }
}

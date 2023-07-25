//
//  CustomTipBox.swift
//  TipApp
//
//  Created by Neal Archival on 7/24/23.
//

import SwiftUI

struct CustomTipBox: View {
    let text: String
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: {}) {
            Text(text)
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: 55)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.blue, lineWidth: 2)
                }
        }
    }
}

struct CustomTipBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomTipBox(text: "Custom Tip")
            CustomTipBox(text: "No Tip")
        }
    }
}

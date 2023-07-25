//
//  TipView.swift
//  TipApp
//
//  Created by Neal Archival on 7/24/23.
//

import SwiftUI

struct TipView: View {
    @State var tipBoxWidth: CGFloat = 0.0
    var body: some View {
        VStack(spacing: 16) {
            Text("Add a tip?")
                .font(.system(size: 26, weight: .medium))
            HStack(spacing: 26) {
                TipBox(total: 25, percentage: 15)
                TipBox(total: 25, percentage: 20)
                TipBox(total: 25, percentage: 25)
            }
            .background {
                GeometryReader { geometry in
                    ZStack {}
                        .hidden()
                        .onAppear {
                            tipBoxWidth = geometry.size.width
                        }
                }
            }
            VStack {
                CustomTipBox(text: "Custom Tip") {}
                CustomTipBox(text: "No Tip") {}
            }
        }
        .frame(width: tipBoxWidth)
        .padding(.horizontal)
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}

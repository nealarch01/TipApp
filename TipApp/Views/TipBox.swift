//
//  TipBox.swift
//  TipApp
//
//  Created by Neal Archival on 7/24/23.
//

import SwiftUI

struct TipBox: View {
    let total: Double
    let percentage: Int
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 0) {
                Text("\(percentage)%")
                    .font(.system(size: 42, weight: .semibold))
                    .foregroundColor(Color.white)
                Text("$\(tipAmount())")
                    .font(.system(size: 22, weight: .regular))
                    .foregroundColor(Color.white.opacity(0.75))
            }
            .foregroundColor(Color.white)
            .frame(width: 200, height: 150)
            .background {
                RoundedRectangle(cornerRadius: 4)
            }
        }
    }
    
    func tipAmount() -> String {
        let tipAmount = total * Double(percentage) / 100.0
        return String(format: "%.2f", tipAmount)
    }
}

struct TipBox_Previews: PreviewProvider {
    static var previews: some View {
        TipBox(total: 25.00, percentage: 15) {}
    }
}

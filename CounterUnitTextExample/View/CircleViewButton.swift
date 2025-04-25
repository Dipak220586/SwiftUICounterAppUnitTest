//
//  CircleViewButton.swift
//  CounterUnitTextExample
//
//  Created by RupaliDipak   on 25/04/25.
//
import SwiftUI

struct CircleViewButton : View {
    let title: String
    let action: () -> Void
    
    
    var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.system(size: 24,weight: .bold, design: .monospaced))
                    .frame(width: 80, height: 80)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
                  }
        
    }
}

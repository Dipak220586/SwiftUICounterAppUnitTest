//
//  CounterView.swift
//  CounterUnitTextExample
//
//  Created by RupaliDipak   on 25/04/25.
//

import SwiftUI

struct CounterView : View {
    
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        
        VStack(spacing: 80){
            
            Text("Count : \(viewModel.count)")
                .font(.system(size: 24, weight: .bold, design: .monospaced))
            
            HStack(spacing: 40){
                
                CircleViewButton(title: "+") {
                    viewModel.increment()
                }
                
                CircleViewButton(title: "0") {
                    viewModel.reset()
                }
                
                CircleViewButton(title: "-") {
                    viewModel.decrement()
                }
                
            }
           

        }
    }
}

#Preview {
    CounterView()
}

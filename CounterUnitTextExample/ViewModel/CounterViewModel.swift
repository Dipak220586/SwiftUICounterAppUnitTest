//
//  CounterViewModel.swift
//  CounterUnitTextExample
//
//  Created by RupaliDipak   on 25/04/25.
//

import SwiftUI

class CounterViewModel : ObservableObject{
    
    @Published var count = 0
    
    func increment(){
        count += 1
    }
    
    func reset()  {
        count = 0
    }
    
    func decrement(){
        count -= 1
    }
    
}

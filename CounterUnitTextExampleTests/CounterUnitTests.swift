//
//  CounterUnitTests.swift
//  CounterUnitTextExampleTests
//
//  Created by RupaliDipak   on 25/04/25.
//

import XCTest

@testable import CounterUnitTextExample

class CounterUnitTests: XCTestCase {
    
    var sut : CounterViewModel!
    var initialValue: Int!
    
    override func setUp(){
        super.setUp()
        sut = CounterViewModel()
        initialValue = sut.count
    }
    
    
    override func tearDown(){
        sut = nil
        super.tearDown()
    }
    
    
    func test_initialCountIsZero(){
        XCTAssertEqual(sut.count, initialValue)
    }
    
    func test_countIsIncrement() {
        sut.increment()
        XCTAssertEqual(sut.count, initialValue + 1)
    }
    
    func test_countIsDecrement()  {
        
        sut.decrement()
        
        XCTAssertEqual(sut.count, initialValue - 1)
    }
    
    func test_countRest()  {
        sut.reset()
        initialValue = 0
        XCTAssertEqual(sut.count, initialValue)
    }
    
    
}

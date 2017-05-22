//
//  HelloWorldTutorialTests.swift
//  HelloWorldTutorialTests
//
//  Created by Till J. Ernst on 09.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import XCTest
@testable import HelloWorldTutorial

class HelloWorldTutorialTests: XCTestCase {
    
    var calculator = CalculatorPredator()
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddToTotal() {
        let currentTotal = self.calculator.addToTotal(value: 10)
        XCTAssertEqual(currentTotal, 10)
    }
    
    func testSubtractFromTotal() {
        let currentTotal = self.calculator.subtractFromTotal(value: 6)
        XCTAssertEqual(currentTotal, -6)
    }
    
    func testMltiplyByTotal(){
        var currentTotal = self.calculator.addToTotal(value: 9)
        currentTotal = self.calculator.multiplyByTotal(value: 5)
        XCTAssertEqual(currentTotal, 45)
        
    }
    
    func testDivideIntoTotal(){
        var currentTotal = self.calculator.addToTotal(value: 45)
        currentTotal = self.calculator.divideIntoTotal(value: 9)
        XCTAssertEqual(currentTotal, 5)
    }
    
    func testClear(){
        self.calculator.addToTotal(value: 99)
        self.calculator.clear()
        XCTAssertEqual(calculator.total, 0)
    }
}

//
//  ParserTests.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/24/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

import XCTest
@testable import PyxisRouter

class ParserTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let parsedTokens = Tokenizer(input: "/foo(/:bar)")
        
        let parser = Parser(tokens: parsedTokens.tokens)
        let pNode = parser.parse()
        
        XCTAssert(pNode!.token == Token.Slash,                      "Root node should == Slash")
        XCTAssert(pNode!.children.count == 2,                       "Root node should have two children")
        XCTAssert(pNode!.children[0].token == Token.Literal(""),    "First child should be foo")
        let slashChild = pNode!.children[1]
        XCTAssert(slashChild.token == Token.Slash,                  "Second child should be Slash")
        XCTAssert(slashChild.children.count == 1,                   "Second child should have one child")
        XCTAssert(slashChild.children[0].token == Token.Symbol(""), "Second child should have one child")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}

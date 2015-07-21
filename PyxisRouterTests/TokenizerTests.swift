//
//  TokenizerTests.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/21/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

import XCTest
@testable import PyxisRouter

class TokenizerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPosts() {
        let t = Tokenizer(input: "/posts")
        XCTAssert(t.tokens[0] == Token.Slash, "/posts first item should be slash")
        XCTAssert(t.tokens[1] == Token.Literal("posts"), "expected posts literal")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}

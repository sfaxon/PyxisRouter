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
    
    func testTokenEquality() {
        let sl = Token.Slash
        let l  = Token.Literal("literal")
        let sy = Token.Symbol("symbol")
        let lp = Token.LParen
        let rp = Token.RParen
        let d  = Token.Dot
        let st = Token.Star
        let o  = Token.Or
        XCTAssert(sl == Token.Slash,              "Slash should == Slash")
        XCTAssert(l  == Token.Literal("literal"), "Literal should == Literal")
        XCTAssert(sy == Token.Symbol("symbol"),   "Symbol should == Symbol")
        XCTAssert(lp == Token.LParen,             "LParen should == LParen")
        XCTAssert(rp == Token.RParen,             "RParen should == Rparen")
        XCTAssert(d  == Token.Dot,                "Dot should == Dot")
        XCTAssert(st == Token.Star,               "Star should == Star")
        XCTAssert(o  == Token.Or,                 "Or should == Or")
    }
    
//    func testTokenInEquality() {
//        let sl = Token.Slash
//        let l  = Token.Literal("literal")
//        let sy = Token.Symbol("symbol")
//        let lp = Token.LParen
//        let rp = Token.RParen
//        let d  = Token.Dot
//        let st = Token.Star
//        let o  = Token.Or
//        XCTAssertNotEqual(sl, Token.LParen)
////        XCTAssert(sl != Token.LParen,              "Slash should != LParen")
////        XCTAssert(l  != Token.Literal("literal"), "Literal should == Literal")
//        XCTAssert(sy == Token.Symbol("symbol"),   "Symbol should == Symbol")
//        XCTAssert(lp == Token.LParen,             "LParen should == LParen")
//        XCTAssert(rp == Token.RParen,             "RParen should == Rparen")
//        XCTAssert(d  == Token.Dot,                "Dot should == Dot")
//        XCTAssert(st == Token.Star,               "Star should == Star")
//        XCTAssert(o  == Token.Or,                 "Or should == Or")
//    }

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

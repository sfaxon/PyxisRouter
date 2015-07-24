//
//  NodeTests.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/21/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

import XCTest
@testable import PyxisRouter

class NodeTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testChildrenAreNotDuplicated() {
        let n = Node(token: Token.Slash)
        n.addChild(Node(token: Token.Literal("aoeu")))
        XCTAssertEqual(n.children.count, 1)
        n.addChild(Node(token: Token.Literal("aoeu")))
        XCTAssertEqual(n.children.count, 1)
    }
    
    func testChildrenHaveSibblings() {
        let n = Node(token: Token.Slash)
        n.addChild(Node(token: Token.Literal("aoeu")))
        XCTAssertEqual(n.children.count, 1)
        n.addChild(Node(token: Token.Literal("dt")))
        XCTAssertEqual(n.children.count, 2)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}

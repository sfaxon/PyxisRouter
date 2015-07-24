//
//  TreeBuilderTests.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/21/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

import XCTest
@testable import PyxisRouter

class TreeBuilderTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        var posts = Tokenizer(input: "/posts")
        var newPosts = Tokenizer(input: "/posts/new")
        
        let tree = TreeBuilder()
        
        tree.addTokens(posts.tokens)
        tree.addTokens(newPosts.tokens)
        XCTAssertEqual(tree.rootNode.children.count, 1)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}

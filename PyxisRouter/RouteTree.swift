//
//  TreeBuilder.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/21/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

class RouteTree: CustomStringConvertible {
    var rootNode: Node
    init() {
        self.rootNode = Node(token: Token.Slash)
    }
    
    func addTokens(tokens: [Token]) {
        var currentNode = self.rootNode
        print("\naddTokens:")
        for (index, t) in tokens.enumerate() {
            let tokenNode = Node(token: t)
            print("index: \(index), t = \(t), currentNode.token = \(currentNode.token)")
            if tokenNode != self.rootNode {
                currentNode = currentNode.addChild(tokenNode)
            } 
        }
    }
    
    var description: String {
        return "\(self.rootNode.children.map { $0.description })"
    }
    
}

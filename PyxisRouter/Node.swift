//
//  Node.swift
//  PyxisRouter
//
//  Created by Seth Faxon on 7/21/15.
//  Copyright © 2015 SlashAndBurn. All rights reserved.
//

class Node: Equatable {
    var children = [Node]()
    let token: Token
    init(token: Token) {
        self.token = token
    }
    
    // adds the given child token if it doesn't exist
    // return the existing child, or the newly created node
    func addChild(node: Node) -> Node {
        let index = self.children.indexOf(node)
        print("addChild index: \(index)")
        if index != nil {
            print("  iterating \(node.describe())")
            return self.children[index!]
        } else {
            print("  added \(node.describe())")
            self.children.append(node)
        }
        return node
    }
    
    func describe() -> String {
        return "\(self.token.describe) -> \(self.children.count)"
    }
}

func ==(lhs: Node, rhs: Node) -> Bool {
    return lhs.token == rhs.token
}


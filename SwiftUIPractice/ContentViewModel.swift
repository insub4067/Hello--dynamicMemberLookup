//
//  ContentViewModel.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/26/23.
//

import Foundation

class ContentViewModel {
    
    let model = Model(items: ["one": "1", "two": "2"])
    let child = Child(name: "child", parent: .init(id: 0, name: "parent"))
    
    func onAppear() {
        print(model.one)
        print(model.two)
        
        print(child.id)
        print(child.name)
    }
}

@dynamicMemberLookup
struct Model {
    
    var items: [String: String]
    
    subscript(dynamicMember key: String) -> String? {
        items[key]
    }
}

struct Parent {
    let id: Int
    let name: String
}

@dynamicMemberLookup
struct Child {
    
    let name: String
    let parent: Parent
    subscript<T>(dynamicMember keyPath: KeyPath<Parent, T>) -> T {
        parent[keyPath: keyPath]
    }
}

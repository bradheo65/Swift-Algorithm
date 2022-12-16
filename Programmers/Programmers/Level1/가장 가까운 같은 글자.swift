//
//  가장 가까운 같은 글자.swift
//  Programmers
//
//  Created by brad on 2022/12/16.
//

import Foundation

struct CloserString {
    func solution(_ s:String) -> [Int] {
        
        var store: [Character] = []
        var result: [Int] = []
        
        s.map { element in
            if store.contains(element) {
                let index = store.lastIndex(of: element)!
                let count = store.count - index
                
                result.append(count)
            } else {
                result.append(-1)
            }
            store.append(element)
        }
        return result
    }
}

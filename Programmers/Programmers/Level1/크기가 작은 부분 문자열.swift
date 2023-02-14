//
//  크기가 작은 부분 문자열.swift
//  Programmers
//
//  Created by brad on 2023/02/14.
//

import Foundation

struct SmallSubstring {
    func solution(_ t:String, _ p:String) -> Int {
        
        let tCount = t.count
        let pCount = p.count

        var store: [String] = []
        var count = 0
        var result = 0
        
        t.forEach { element in
            if store.count == tCount - pCount + 1 {
                return
            } else {
                store.append(String(Array(t)[count...count + pCount - 1]))
                count += 1
            }
        }
            
        store.forEach { element in
            if element <= p {
                result += 1
            }
        }
        print(result)
        return result
    }
}


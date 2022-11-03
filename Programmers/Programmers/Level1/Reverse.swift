//
//  Reverse.swift
//  Programmers
//
//  Created by brad on 2022/11/03.
//

import Foundation

struct Reverse {
    func solution(_ n:Int64) -> [Int] {
        var stringStore: [Int] = []
        var result: [Int] = []
        
        n.description.map { element in
            stringStore.append(Int(String(element))!)
        }
                
        result = stringStore.reversed()
        
        return result
    }
}

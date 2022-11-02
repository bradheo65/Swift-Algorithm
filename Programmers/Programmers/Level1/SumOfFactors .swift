//
//  SumOfFactors .swift
//  Programmers
//
//  Created by brad on 2022/11/02.
//

import Foundation

struct SomeOfFactors {
    func solution(_ n:Int) -> Int {
        var store: [Int] = []
        
        if n == 0 { return 0 }
        for i in 1...n {
            if n % i == 0 {
                store.append(i)
            } else {
                continue
            }
        }
        return store.reduce(0, +)
    }
}

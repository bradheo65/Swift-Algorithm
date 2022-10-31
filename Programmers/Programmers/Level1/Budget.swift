//
//  Budget.swift
//  Programmers
//
//  Created by brad on 2022/10/31.
//

import Foundation

// MARK: - 예산

struct Budget {
    func solution(_ d:[Int], _ budget:Int) -> Int {
        var sum = 0
        var count = 0
        
        for i in d.sorted() {
            sum += i
            guard sum <= budget else {
                break
            }
            count += 1
        }
        return count
    }
}

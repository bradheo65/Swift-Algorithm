//
//  Decimal.swift
//  Programmers
//
//  Created by brad on 2022/10/31.
//

import Foundation

// MARK: - 소수 찾기

struct Decimal {
    func solution(_ nums:[Int]) -> Int {
        var answer = 0

        func isPrime(num: Int) -> Bool {
            for i in 2...Int(sqrt(Double(num))) {
                if num % i == 0 {
                    return false
                }
            }
            return true
        }

        for i in 0..<nums.count{
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    let sum = nums[i] + nums[j] + nums[k]
                    if isPrime(num: sum) {
                        answer += 1
                    }
                }
            }
        }
        return answer
    }
}

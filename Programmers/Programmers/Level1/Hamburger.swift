//
//  Hamburger.swift
//  Programmers
//
//  Created by brad on 2022/11/01.
//

import Foundation

struct Hamburger {
    func solution(_ ingredient:[Int]) -> Int {
        let result = [1, 2, 3, 1]
        var arr1: [Int] = []
        var arr2: [Int] = []
        var count = 0

        for i in ingredient {
            arr1.append(i)
            
            if arr1.count == 4 {
                if arr1 == result {
                    count += 1
                    arr1.removeAll()
                    for i in arr2 {
                        arr1.append(i)
                    }
                } else {
                    arr2.append(arr1.first ?? 0)
                    arr1.removeFirst()
                    continue
                }
            }
        }
        return count
    }
}

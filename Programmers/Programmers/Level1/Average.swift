//
//  Average.swift
//  Programmers
//
//  Created by brad on 2022/11/02.
//

import Foundation

struct Average {
    func solution(_ arr:[Int]) -> Double {
        var sum = 0.0
        var result = 0.0
        
        if arr.count >= 1 && arr.count <= 100 {
            sum = Double(arr.reduce(0, +))
            result = sum/Double(arr.count)
        }
        return Double(result)
    }
}

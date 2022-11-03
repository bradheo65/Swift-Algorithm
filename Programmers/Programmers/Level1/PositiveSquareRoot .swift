//
//  PositiveSquareRoot .swift
//  Programmers
//
//  Created by brad on 2022/11/03.
//

import Foundation

struct PositiveSquareRoot {
    func solution(_ n:Int64) -> Int64 {
        let myNumber = Double(n)
        var result = sqrt(myNumber)
        
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            result += 1
            return Int64(pow(result, 2))
        } else {
            return -1
        }
    }
}

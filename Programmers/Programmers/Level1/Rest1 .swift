//
//  Rest1 .swift
//  Programmers
//
//  Created by brad on 2022/11/07.
//

import Foundation

struct Rest1 {
    func solution(_ n:Int) -> Int {
        var result = 0
        
        for i in 1...n {
            if n % i == 1 {
                result = i
                break
            }
        }
        return result
    }
}

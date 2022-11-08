//
//  p와 y의 개수.swift
//  Programmers
//
//  Created by brad on 2022/11/08.
//

import Foundation

func solution(_ s:String) -> Bool {
    var ans:Bool = false
    var pCount = 0
    var yCount = 0
    
    let firstString = "p"
    let seconedString = "y"
    
    s.map { element in        
        if Character(firstString.uppercased()) == element ||
            Character(firstString.lowercased()) == element {
            pCount += 1
        } else if Character(seconedString.uppercased()) == element ||
                    Character(seconedString.lowercased()) == element {
            yCount += 1
        }
    }
    
    if pCount == yCount {
        ans = true
    }
    return ans
}

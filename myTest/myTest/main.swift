//
//  main.swift
//  myTest
//
//  Created by brad on 2022/11/05.
//

import Foundation

//func solution(_ line:String) -> String {
//    var store: Character?
//    var result = ""
//
//    line.map({ element in
//
//        if element == store {
//            if result.last != "*" {
//                result.append("*")
//            }
//        } else {
//            result.append(element)
//        }
//
//        store = element
//    })
//    return result
//}
//
//
//print(solution("aaaaabc"))

func solution(_ worldmap:[String]) -> Int {
    var count = 0
    for i in worldmap {
        for j in 0...i.count {
            if i[i.index(i.startIndex, offsetBy: j)] != "X" {
                count += 1
            } else {
                break
            }
        }
        print(i)

    }
    return count
}

print(solution(["...XXX", "...XXX", "....XX", "X.....", "XXX..."]))


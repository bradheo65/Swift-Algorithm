//
//  숫자 문자열과 영단어.swift
//  Programmers
//
//  Created by brad on 2022/11/16.
//

import Foundation

struct StringOfNumbersAndWords {
    
    func solution(_ s:String) -> Int {
        
        let number = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        var store = ""
        var answer = ""
        
        s.map({ data in
            store.append(data)

            if number.contains(store) {
                answer.append(number.firstIndex(of: store)!.description)
                store = ""
            } else if Int(data.description) != nil {
                answer.append(data)
                store = ""
            }
        })
        
        return Int(answer) ?? 0
    }
}


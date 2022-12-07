//
//  JadenCase 문자열 만들기 .swift
//  Programmers
//
//  Created by brad on 2022/12/07.
//

import Foundation

struct JadenCase {
    func solution(_ s:String) -> String {
        var result = ""
        var isFirstIndex = true
        
        for index in s {
            if index == " " {
                result += " "
                isFirstIndex = true
                continue
            }
            
            if isFirstIndex {
                if let checkNumber = Int(String(index)) {
                    result += String(index)
                } else {
                    result += String(index).uppercased()
                }
                isFirstIndex = false

            } else {
                result += String(index).lowercased()
            }
        }
        return result
    }
}

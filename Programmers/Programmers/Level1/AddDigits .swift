//
//  AddDigits .swift
//  Programmers
//
//  Created by brad on 2022/11/02.
//

import Foundation

struct AddDigits {
    func solution(_ n:Int) -> Int
    {
        var answer:Int = 0
        let count = n.description.count
        let myString = String(n).map { $0 }
        
        for i in 0..<count {
            answer += Int(String(myString[i]))!
        }
    
        return answer
    }
}

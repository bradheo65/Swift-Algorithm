//
//  핸드폰 번호 가리기.swift
//  Programmers
//
//  Created by brad on 2022/11/15.
//

import Foundation

struct PhoneNumberHide {
    func solution(_ phone_number:String) -> String {
        var answer = ""

        let count = phone_number.count
        let last = phone_number.prefix(count - 4)
        
        for i in last {
            answer += "*"
        }
        answer += phone_number.suffix(4)
        
        return String(answer)
    }
}

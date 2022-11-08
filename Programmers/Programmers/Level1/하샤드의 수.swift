//
//  하샤드의 수.swift
//  Programmers
//
//  Created by brad on 2022/11/08.
//

import Foundation

struct HarshadNumber {
    func solution(_ x:Int) -> Bool {
        let numberLength = String(x).count
        var store = 0
        
        for i in 1...numberLength {
            let y: Int = Int(pow(10.0, Float(i)))
            let z: Int = Int(pow(10.0, Float(i - 1)))
            
            let sum = (x % y / z)
            store += sum
        }
        if x % store == 0 {
            return true
        } else {
            return false
        }
    }
}

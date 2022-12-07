//
//  MaximumAndMinimum.swift
//  Programmers
//
//  Created by brad on 2022/12/07.
//

import Foundation

struct MaximumAndMinimum {
    func solution(_ s: String) -> String {
                
        let splitString = s.split(separator: " ")
                        
        var store: [Int] = []
        
        splitString.map { element in
            store.append(Int(element)!)
        }
        
        let result = String(store.min()!) + " " + String(store.max()!)
        
        return result
    }
}

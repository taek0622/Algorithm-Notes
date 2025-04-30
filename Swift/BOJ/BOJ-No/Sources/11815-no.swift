//
//  11815.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/17.
//

// 문제: https://www.acmicpc.net/problem/11815

import Foundation

class BOJ11815: Solvable {
    func run() {
        let _ = Int(readLine()!)!
        let X = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = ""

        for number in X {
            result += (number == Int(pow(Double(Int(pow(Double(number), 0.5))), 2))) ? "1 " : "0 "
        }

        print(result)
    }
}

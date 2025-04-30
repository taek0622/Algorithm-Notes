//
//  11576.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/23.
//

// 문제: https://www.acmicpc.net/problem/11576

import Foundation

class BOJ11576: Solvable {
    func run() {
        let radix = readLine()!.split(separator: " ").map { Int(String($0))! }
        let digit = Int(readLine()!)!
        let numbers = readLine()!.uppercased().split(separator: " ").map { String($0) }
        let numberChart = ["A": 10, "B": 11, "C": 12, "D": 13, "E": 14, "F": 15, "G": 16, "H": 17, "I": 18, "J": 19,
                           "K": 20, "L": 21, "M": 22, "N": 23, "O": 24, "P": 25, "Q": 26, "R":27, "S": 28, "T": 29]

        numbers.forEach {
            let number = Int($0, radix: radix[0])
            print(String(number!, radix: radix[1]), terminator: " ")
        }
    }
}

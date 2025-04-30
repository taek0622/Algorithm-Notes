//
//  14489.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/28.
//

// 문제: https://www.acmicpc.net/problem/14489

class BOJ14489: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 174B
        let balances = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
        let price = Int(readLine()!)! * 2
        print(balances < price ? balances : balances - price)
    }
}

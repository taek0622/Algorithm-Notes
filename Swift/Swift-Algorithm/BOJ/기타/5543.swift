//
//  5543.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/31.
//

// 문제: https://www.acmicpc.net/problem/5543

class BOJ5543: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 210B
        var burgers = [Int]()
        var beverages = [Int]()

        for _ in 0..<3 {
            burgers.append(Int(readLine()!)!)
        }

        for _ in 0..<2 {
            beverages.append(Int(readLine()!)!)
        }

        print(burgers.min()! + beverages.min()! - 50)
    }
}

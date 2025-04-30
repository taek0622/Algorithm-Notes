//
//  11948.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/12.
//

// 문제: https://www.acmicpc.net/problem/11948

class BOJ11948: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 177B
        var ABCD = [Int]()

        for _ in  0..<4 {
            ABCD.append(Int(readLine()!)!)
        }

        ABCD.sort()

        var EF = max(Int(readLine()!)!, Int(readLine()!)!)

        print(ABCD[1...3].reduce(0, +) + EF)
    }
}

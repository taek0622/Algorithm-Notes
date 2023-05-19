//
//  1964.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/19.
//

// 문제: https://www.acmicpc.net/problem/1964

class BOJ1408: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 497B
        let current = readLine()!.split(separator: ":").map { Int(String($0))! }
        var start = readLine()!.split(separator: ":").map { Int(String($0))! }

        if start[0] < current[0] {
            start[0] += 24
        }

        let remain = (start[0] - current[0]) * 3600 + (start[1] - current[1]) * 60 + start[2] - current[2]
        print("\(remain / 3600 > 9 ? "\(remain / 3600)" : "0\(remain / 3600)"):\(remain / 60 % 60 > 9 ? "\(remain / 60 % 60)" : "0\(remain / 60 % 60 )"):\(remain % 60 > 9 ? "\(remain % 60)" : "0\(remain % 60)")")
    }
}

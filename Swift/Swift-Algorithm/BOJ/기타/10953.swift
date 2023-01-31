//
//  10953.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/31.
//

// 문제: https://www.acmicpc.net/problem/10953

class BOJ10953: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 117B
        for _ in 0..<Int(readLine()!)! {
            print(readLine()!.split(separator: ",").map { Int(String($0))! }.reduce(0, +))
        }
    }
}

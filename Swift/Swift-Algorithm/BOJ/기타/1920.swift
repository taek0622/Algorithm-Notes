//
//  1920.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/28.
//

// 문제: https://www.acmicpc.net/problem/1920

class BOJ1920: Solvable {
    func run() {
        // 메모리: 81396KB, 시간: 208ms, 코드 길이: 247B
        let N = Int(readLine()!)!
        let A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let M = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        input.forEach {
            print(A.contains($0) ? 1 : 0)
        }
    }
}

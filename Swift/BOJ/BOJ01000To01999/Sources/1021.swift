//
//  1021.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/21.
//

//  문제 링크: https://www.acmicpc.net/problem/1021
//  알고리즘 분류: 자료 구조, 덱

import Shared

public struct BOJ1021: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 383B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(1...NM[0])
        var count = 0

        while !numbers.isEmpty {
            let idx = A.firstIndex(of: numbers.removeFirst())!
            A.remove(at: idx)
            count += min(idx, A.count - idx + 1)
            A = Array(A[idx...]) + Array(A[..<idx])
        }

        print(count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 395B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(1...NM[0])
        var count = 0

        for idx in 0..<NM[1] {
            var temp = 0

            while A.first != numbers[idx] {
                A.insert(A.popLast()!, at: 0)
                temp += 1
            }

            count += min(temp, A.count - temp)
            A.removeFirst()
        }

        print(count)
    }
}

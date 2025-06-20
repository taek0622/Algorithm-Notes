//
//  3003.swift
//  Swift
//
//  Created by 김민택 on 2022/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3003
//  알고리즘 분류: 수학, 구현, 사칙연산

import Shared

public struct BOJ3003: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 242B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let chess = [1, 1, 2, 2, 2, 8]

        var res = [Int]()

        for i in 0..<chess.count {
            res.append(chess[i] - input[i])
        }

        res.forEach {
            print($0, terminator: " ")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 187B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let chess = [1, 1, 2, 2, 2, 8]
        
        for i in 0..<chess.count {
            print(chess[i] - input[i], terminator: " ")
        }
    }
}

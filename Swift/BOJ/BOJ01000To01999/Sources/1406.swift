//
//  1406.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/5/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1406
//  알고리즘 분류: 자료 구조, 스택, 연결 리스트

import Shared

public struct BOJ1406: Solvable {
    public init() {}

    public func run() {
        // 메모리: 95436KB, 시간: 264ms, 코드 길이: 483B
        var left = readLine()!.map { $0 }
        var right = [Character]()
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let command = readLine()!

            switch command {
            case "L":
                if !left.isEmpty {
                    right.append(left.removeLast())
                }
            case "D":
                if !right.isEmpty {
                    left.append(right.removeLast())
                }
            case "B":
                _ = left.popLast()
            default:
                left.append(command.last!)
            }
        }

        print(String(left + right.reversed()))
    }
}

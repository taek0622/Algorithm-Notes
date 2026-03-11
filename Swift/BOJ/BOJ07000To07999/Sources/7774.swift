//
//  7774.swift
//  BOJ07000To07999
//
//  Created by 김이안 on 3/11/26.
//

//  문제 링크: https://www.acmicpc.net/problem/7662
//  알고리즘 분류: 구현, 그리디 알고리즘, 정렬, 시뮬레이션

import Shared

public struct BOJ7774: Solvable {
    public init() {}

    public func run() {
        // 메모리: 78848KB, 시간: 76ms, 코드 길이: 528B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        var (a, b) = ([Int](), [Int]())
        var answer = 0

        if nm[0] != 0 {
            a = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        }

        if nm[1] != 0 {
            b = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        }

        while a.count > 0 {
            let currentA = a.removeLast()

            for _ in 0..<currentA where b.count > 0 {
                answer += b.removeLast()
            }

            if a.count > 0 && b.count > 0 {
                answer -= 1
            } else {
                break
            }
        }

        print(answer)
    }
}
